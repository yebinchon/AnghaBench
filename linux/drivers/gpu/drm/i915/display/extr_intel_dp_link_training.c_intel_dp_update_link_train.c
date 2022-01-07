
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int lane_count; int train_set; int aux; } ;


 int DP_TRAINING_LANE0_SET ;
 int drm_dp_dpcd_write (int *,int ,int ,int) ;
 int intel_dp_set_signal_levels (struct intel_dp*) ;

__attribute__((used)) static bool
intel_dp_update_link_train(struct intel_dp *intel_dp)
{
 int ret;

 intel_dp_set_signal_levels(intel_dp);

 ret = drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
    intel_dp->train_set, intel_dp->lane_count);

 return ret == intel_dp->lane_count;
}
