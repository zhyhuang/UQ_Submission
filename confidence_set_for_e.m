% confidence set for e
data_load=load('confidence_set_e');

% discrete confidence set
discrete_e_set=data_load.eligible_e;

% continuous confidence set parameters

beta_svm=data_load.beta_svm;
bias_svm=data_load.bias_svm;
e_range=data_load.range_e;

% indicator of whether the example is in the confidence set
e_example=[1,1,1,1];
e_in_set= (e_example*beta_svm+bias_svm>0)... % svm for eligible e
           && all(e_example'>e_range(:,1))... % lower bound for eligible e
           && all(e_example'<e_range(:,2)); % upper bound for eligible e