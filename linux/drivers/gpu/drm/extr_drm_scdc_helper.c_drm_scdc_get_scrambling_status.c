
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int SCDC_SCRAMBLER_STATUS ;
 int SCDC_SCRAMBLING_STATUS ;
 int drm_scdc_readb (struct i2c_adapter*,int ,int*) ;

bool drm_scdc_get_scrambling_status(struct i2c_adapter *adapter)
{
 u8 status;
 int ret;

 ret = drm_scdc_readb(adapter, SCDC_SCRAMBLER_STATUS, &status);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed to read scrambling status: %d\n", ret);
  return 0;
 }

 return status & SCDC_SCRAMBLING_STATUS;
}
