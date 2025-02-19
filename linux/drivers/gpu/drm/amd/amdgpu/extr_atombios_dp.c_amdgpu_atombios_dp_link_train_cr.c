
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amdgpu_atombios_dp_link_train_info {int* train_set; int tries; int dp_lane_count; int link_status; int aux; int dpcd; } ;


 int DP_TRAINING_PATTERN_1 ;
 int DP_TRAIN_MAX_SWING_REACHED ;
 int DP_TRAIN_PRE_EMPHASIS_MASK ;
 int DP_TRAIN_PRE_EMPHASIS_SHIFT ;
 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int DRM_ERROR (char*) ;
 int amdgpu_atombios_dp_get_adjust_train (int ,int,int*) ;
 int amdgpu_atombios_dp_set_tp (struct amdgpu_atombios_dp_link_train_info*,int ) ;
 int amdgpu_atombios_dp_update_vs_emph (struct amdgpu_atombios_dp_link_train_info*) ;
 scalar_t__ drm_dp_clock_recovery_ok (int ,int) ;
 scalar_t__ drm_dp_dpcd_read_link_status (int ,int ) ;
 int drm_dp_link_train_clock_recovery_delay (int ) ;
 int memset (int*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int
amdgpu_atombios_dp_link_train_cr(struct amdgpu_atombios_dp_link_train_info *dp_info)
{
 bool clock_recovery;
 u8 voltage;
 int i;

 amdgpu_atombios_dp_set_tp(dp_info, DP_TRAINING_PATTERN_1);
 memset(dp_info->train_set, 0, 4);
 amdgpu_atombios_dp_update_vs_emph(dp_info);

 udelay(400);


 clock_recovery = 0;
 dp_info->tries = 0;
 voltage = 0xff;
 while (1) {
  drm_dp_link_train_clock_recovery_delay(dp_info->dpcd);

  if (drm_dp_dpcd_read_link_status(dp_info->aux,
       dp_info->link_status) <= 0) {
   DRM_ERROR("displayport link status failed\n");
   break;
  }

  if (drm_dp_clock_recovery_ok(dp_info->link_status, dp_info->dp_lane_count)) {
   clock_recovery = 1;
   break;
  }

  for (i = 0; i < dp_info->dp_lane_count; i++) {
   if ((dp_info->train_set[i] & DP_TRAIN_MAX_SWING_REACHED) == 0)
    break;
  }
  if (i == dp_info->dp_lane_count) {
   DRM_ERROR("clock recovery reached max voltage\n");
   break;
  }

  if ((dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) == voltage) {
   ++dp_info->tries;
   if (dp_info->tries == 5) {
    DRM_ERROR("clock recovery tried 5 times\n");
    break;
   }
  } else
   dp_info->tries = 0;

  voltage = dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;


  amdgpu_atombios_dp_get_adjust_train(dp_info->link_status, dp_info->dp_lane_count,
          dp_info->train_set);

  amdgpu_atombios_dp_update_vs_emph(dp_info);
 }
 if (!clock_recovery) {
  DRM_ERROR("clock recovery failed\n");
  return -1;
 } else {
  DRM_DEBUG_KMS("clock recovery at voltage %d pre-emphasis %d\n",
     dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK,
     (dp_info->train_set[0] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
     DP_TRAIN_PRE_EMPHASIS_SHIFT);
  return 0;
 }
}
