
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int* dpcd; } ;


 size_t DP_DPCD_REV ;
 int DP_SET_POWER ;
 int DP_SET_POWER_D0 ;
 int DP_SET_POWER_D3 ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_MODE_DPMS_ON ;
 int cdv_intel_dp_aux_native_write_1 (struct gma_encoder*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void cdv_intel_dp_sink_dpms(struct gma_encoder *encoder, int mode)
{
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 int ret, i;


 if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
  return;

 if (mode != DRM_MODE_DPMS_ON) {
  ret = cdv_intel_dp_aux_native_write_1(encoder, DP_SET_POWER,
        DP_SET_POWER_D3);
  if (ret != 1)
   DRM_DEBUG_DRIVER("failed to write sink power state\n");
 } else {




  for (i = 0; i < 3; i++) {
   ret = cdv_intel_dp_aux_native_write_1(encoder,
         DP_SET_POWER,
         DP_SET_POWER_D0);
   if (ret == 1)
    break;
   udelay(1000);
  }
 }
}
