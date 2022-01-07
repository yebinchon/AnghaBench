
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int link_trained; } ;


 int DP_TRAINING_PATTERN_DISABLE ;
 int intel_dp_set_link_train (struct intel_dp*,int ) ;

void intel_dp_stop_link_train(struct intel_dp *intel_dp)
{
 intel_dp->link_trained = 1;

 intel_dp_set_link_train(intel_dp,
    DP_TRAINING_PATTERN_DISABLE);
}
