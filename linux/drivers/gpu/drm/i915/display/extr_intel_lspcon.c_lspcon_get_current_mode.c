
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_lspcon {int dummy; } ;
struct i2c_adapter {int dummy; } ;
typedef enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;
struct TYPE_3__ {struct i2c_adapter ddc; } ;
struct TYPE_4__ {TYPE_1__ aux; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_LSPCON_MODE_INVALID ;
 scalar_t__ drm_lspcon_get_mode (struct i2c_adapter*,int*) ;
 TYPE_2__* lspcon_to_intel_dp (struct intel_lspcon*) ;

__attribute__((used)) static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
{
 enum drm_lspcon_mode current_mode;
 struct i2c_adapter *adapter = &lspcon_to_intel_dp(lspcon)->aux.ddc;

 if (drm_lspcon_get_mode(adapter, &current_mode)) {
  DRM_DEBUG_KMS("Error reading LSPCON mode\n");
  return DRM_LSPCON_MODE_INVALID;
 }
 return current_mode;
}
