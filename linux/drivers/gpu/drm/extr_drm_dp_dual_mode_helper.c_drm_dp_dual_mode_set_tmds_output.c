
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int tmp ;
typedef int tmds_oen ;
struct i2c_adapter {int dummy; } ;
typedef int ssize_t ;
typedef enum drm_dp_dual_mode_type { ____Placeholder_drm_dp_dual_mode_type } drm_dp_dual_mode_type ;


 scalar_t__ DP_DUAL_MODE_TMDS_DISABLE ;
 int DP_DUAL_MODE_TMDS_OEN ;
 int DRM_DEBUG_KMS (char*,char*,...) ;
 int DRM_DP_DUAL_MODE_TYPE2_DVI ;
 int EIO ;
 int drm_dp_dual_mode_read (struct i2c_adapter*,int ,scalar_t__*,int) ;
 int drm_dp_dual_mode_write (struct i2c_adapter*,int ,scalar_t__*,int) ;

int drm_dp_dual_mode_set_tmds_output(enum drm_dp_dual_mode_type type,
         struct i2c_adapter *adapter, bool enable)
{
 uint8_t tmds_oen = enable ? 0 : DP_DUAL_MODE_TMDS_DISABLE;
 ssize_t ret;
 int retry;

 if (type < DRM_DP_DUAL_MODE_TYPE2_DVI)
  return 0;





 for (retry = 0; retry < 3; retry++) {
  uint8_t tmp;

  ret = drm_dp_dual_mode_write(adapter, DP_DUAL_MODE_TMDS_OEN,
          &tmds_oen, sizeof(tmds_oen));
  if (ret) {
   DRM_DEBUG_KMS("Failed to %s TMDS output buffers (%d attempts)\n",
          enable ? "enable" : "disable",
          retry + 1);
   return ret;
  }

  ret = drm_dp_dual_mode_read(adapter, DP_DUAL_MODE_TMDS_OEN,
         &tmp, sizeof(tmp));
  if (ret) {
   DRM_DEBUG_KMS("I2C read failed during TMDS output buffer %s (%d attempts)\n",
          enable ? "enabling" : "disabling",
          retry + 1);
   return ret;
  }

  if (tmp == tmds_oen)
   return 0;
 }

 DRM_DEBUG_KMS("I2C write value mismatch during TMDS output buffer %s\n",
        enable ? "enabling" : "disabling");

 return -EIO;
}
