
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_dp_link_train_info {int tries; int* train_set; int dp_lane_count; int link_status; int aux; int dpcd; scalar_t__ tp3_supported; } ;


 int DP_TRAINING_PATTERN_2 ;
 int DP_TRAINING_PATTERN_3 ;
 int DP_TRAIN_PRE_EMPHASIS_MASK ;
 int DP_TRAIN_PRE_EMPHASIS_SHIFT ;
 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int DRM_ERROR (char*) ;
 int dp_get_adjust_train (int ,int ,int*) ;
 scalar_t__ drm_dp_channel_eq_ok (int ,int ) ;
 scalar_t__ drm_dp_dpcd_read_link_status (int ,int ) ;
 int drm_dp_link_train_channel_eq_delay (int ) ;
 int radeon_dp_set_tp (struct radeon_dp_link_train_info*,int ) ;
 int radeon_dp_update_vs_emph (struct radeon_dp_link_train_info*) ;

__attribute__((used)) static int radeon_dp_link_train_ce(struct radeon_dp_link_train_info *dp_info)
{
 bool channel_eq;

 if (dp_info->tp3_supported)
  radeon_dp_set_tp(dp_info, DP_TRAINING_PATTERN_3);
 else
  radeon_dp_set_tp(dp_info, DP_TRAINING_PATTERN_2);


 dp_info->tries = 0;
 channel_eq = 0;
 while (1) {
  drm_dp_link_train_channel_eq_delay(dp_info->dpcd);

  if (drm_dp_dpcd_read_link_status(dp_info->aux,
       dp_info->link_status) <= 0) {
   DRM_ERROR("displayport link status failed\n");
   break;
  }

  if (drm_dp_channel_eq_ok(dp_info->link_status, dp_info->dp_lane_count)) {
   channel_eq = 1;
   break;
  }


  if (dp_info->tries > 5) {
   DRM_ERROR("channel eq failed: 5 tries\n");
   break;
  }


  dp_get_adjust_train(dp_info->link_status, dp_info->dp_lane_count, dp_info->train_set);

  radeon_dp_update_vs_emph(dp_info);
  dp_info->tries++;
 }

 if (!channel_eq) {
  DRM_ERROR("channel eq failed\n");
  return -1;
 } else {
  DRM_DEBUG_KMS("channel eq at voltage %d pre-emphasis %d\n",
     dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK,
     (dp_info->train_set[0] & DP_TRAIN_PRE_EMPHASIS_MASK)
     >> DP_TRAIN_PRE_EMPHASIS_SHIFT);
  return 0;
 }
}
