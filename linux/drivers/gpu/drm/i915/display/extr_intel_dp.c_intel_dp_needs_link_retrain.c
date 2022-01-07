
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int lane_count; int link_rate; int link_trained; } ;


 int DP_LINK_STATUS_SIZE ;
 int drm_dp_channel_eq_ok (int *,int ) ;
 int intel_dp_get_link_status (struct intel_dp*,int *) ;
 int intel_dp_link_params_valid (struct intel_dp*,int ,int ) ;
 scalar_t__ intel_psr_enabled (struct intel_dp*) ;

__attribute__((used)) static bool
intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
{
 u8 link_status[DP_LINK_STATUS_SIZE];

 if (!intel_dp->link_trained)
  return 0;
 if (intel_psr_enabled(intel_dp))
  return 0;

 if (!intel_dp_get_link_status(intel_dp, link_status))
  return 0;





 if (!intel_dp_link_params_valid(intel_dp, intel_dp->link_rate,
     intel_dp->lane_count))
  return 0;


 return !drm_dp_channel_eq_ok(link_status, intel_dp->lane_count);
}
