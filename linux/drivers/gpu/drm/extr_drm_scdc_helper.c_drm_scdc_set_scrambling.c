
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int SCDC_SCRAMBLING_ENABLE ;
 int SCDC_TMDS_CONFIG ;
 int drm_scdc_readb (struct i2c_adapter*,int ,int *) ;
 int drm_scdc_writeb (struct i2c_adapter*,int ,int ) ;

bool drm_scdc_set_scrambling(struct i2c_adapter *adapter, bool enable)
{
 u8 config;
 int ret;

 ret = drm_scdc_readb(adapter, SCDC_TMDS_CONFIG, &config);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed to read TMDS config: %d\n", ret);
  return 0;
 }

 if (enable)
  config |= SCDC_SCRAMBLING_ENABLE;
 else
  config &= ~SCDC_SCRAMBLING_ENABLE;

 ret = drm_scdc_writeb(adapter, SCDC_TMDS_CONFIG, config);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed to enable scrambling: %d\n", ret);
  return 0;
 }

 return 1;
}
