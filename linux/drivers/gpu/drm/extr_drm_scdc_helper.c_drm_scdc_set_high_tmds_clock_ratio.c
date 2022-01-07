
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int SCDC_TMDS_BIT_CLOCK_RATIO_BY_40 ;
 int SCDC_TMDS_CONFIG ;
 int drm_scdc_readb (struct i2c_adapter*,int ,int *) ;
 int drm_scdc_writeb (struct i2c_adapter*,int ,int ) ;
 int usleep_range (int,int) ;

bool drm_scdc_set_high_tmds_clock_ratio(struct i2c_adapter *adapter, bool set)
{
 u8 config;
 int ret;

 ret = drm_scdc_readb(adapter, SCDC_TMDS_CONFIG, &config);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed to read TMDS config: %d\n", ret);
  return 0;
 }

 if (set)
  config |= SCDC_TMDS_BIT_CLOCK_RATIO_BY_40;
 else
  config &= ~SCDC_TMDS_BIT_CLOCK_RATIO_BY_40;

 ret = drm_scdc_writeb(adapter, SCDC_TMDS_CONFIG, config);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed to set TMDS clock ratio: %d\n", ret);
  return 0;
 }






 usleep_range(1000, 2000);
 return 1;
}
