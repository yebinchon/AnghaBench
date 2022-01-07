
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int max_link_lane_count; int max_link_rate; int * common_rates; int num_common_rates; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int intel_dp_can_link_train_fallback_for_edp (struct intel_dp*,int ,int) ;
 scalar_t__ intel_dp_is_edp (struct intel_dp*) ;
 int intel_dp_max_common_rate (struct intel_dp*) ;
 int intel_dp_rate_index (int *,int ,int) ;

int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
         int link_rate, u8 lane_count)
{
 int index;

 index = intel_dp_rate_index(intel_dp->common_rates,
        intel_dp->num_common_rates,
        link_rate);
 if (index > 0) {
  if (intel_dp_is_edp(intel_dp) &&
      !intel_dp_can_link_train_fallback_for_edp(intel_dp,
             intel_dp->common_rates[index - 1],
             lane_count)) {
   DRM_DEBUG_KMS("Retrying Link training for eDP with same parameters\n");
   return 0;
  }
  intel_dp->max_link_rate = intel_dp->common_rates[index - 1];
  intel_dp->max_link_lane_count = lane_count;
 } else if (lane_count > 1) {
  if (intel_dp_is_edp(intel_dp) &&
      !intel_dp_can_link_train_fallback_for_edp(intel_dp,
             intel_dp_max_common_rate(intel_dp),
             lane_count >> 1)) {
   DRM_DEBUG_KMS("Retrying Link training for eDP with same parameters\n");
   return 0;
  }
  intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);
  intel_dp->max_link_lane_count = lane_count >> 1;
 } else {
  DRM_ERROR("Link Training Unsuccessful\n");
  return -1;
 }

 return 0;
}
