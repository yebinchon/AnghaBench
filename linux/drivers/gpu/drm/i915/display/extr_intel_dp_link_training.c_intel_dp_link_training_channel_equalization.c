
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intel_dp {int lane_count; int dpcd; } ;


 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_LINK_STATUS_SIZE ;
 int DP_TRAINING_PATTERN_4 ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 scalar_t__ drm_dp_channel_eq_ok (int *,int ) ;
 int drm_dp_clock_recovery_ok (int *,int ) ;
 int drm_dp_link_train_channel_eq_delay (int ) ;
 int intel_dp_dump_link_status (int *) ;
 int intel_dp_get_link_status (struct intel_dp*,int *) ;
 int intel_dp_set_idle_link_train (struct intel_dp*) ;
 int intel_dp_set_link_train (struct intel_dp*,int ) ;
 int intel_dp_training_pattern (struct intel_dp*) ;
 int intel_dp_update_link_train (struct intel_dp*) ;
 int intel_get_adjust_train (struct intel_dp*,int *) ;

__attribute__((used)) static bool
intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
{
 int tries;
 u32 training_pattern;
 u8 link_status[DP_LINK_STATUS_SIZE];
 bool channel_eq = 0;

 training_pattern = intel_dp_training_pattern(intel_dp);

 if (training_pattern != DP_TRAINING_PATTERN_4)
  training_pattern |= DP_LINK_SCRAMBLING_DISABLE;


 if (!intel_dp_set_link_train(intel_dp,
         training_pattern)) {
  DRM_ERROR("failed to start channel equalization\n");
  return 0;
 }

 for (tries = 0; tries < 5; tries++) {

  drm_dp_link_train_channel_eq_delay(intel_dp->dpcd);
  if (!intel_dp_get_link_status(intel_dp, link_status)) {
   DRM_ERROR("failed to get link status\n");
   break;
  }


  if (!drm_dp_clock_recovery_ok(link_status,
           intel_dp->lane_count)) {
   intel_dp_dump_link_status(link_status);
   DRM_DEBUG_KMS("Clock recovery check failed, cannot "
          "continue channel equalization\n");
   break;
  }

  if (drm_dp_channel_eq_ok(link_status,
      intel_dp->lane_count)) {
   channel_eq = 1;
   DRM_DEBUG_KMS("Channel EQ done. DP Training "
          "successful\n");
   break;
  }


  intel_get_adjust_train(intel_dp, link_status);
  if (!intel_dp_update_link_train(intel_dp)) {
   DRM_ERROR("failed to update link training\n");
   break;
  }
 }


 if (tries == 5) {
  intel_dp_dump_link_status(link_status);
  DRM_DEBUG_KMS("Channel equalization failed 5 times\n");
 }

 intel_dp_set_idle_link_train(intel_dp);

 return channel_eq;

}
