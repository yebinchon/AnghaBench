
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intel_dp {int* edp_dpcd; int aux; } ;
struct intel_connector {TYPE_1__* encoder; } ;
typedef int read_val ;
struct TYPE_2__ {int base; } ;


 int DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT ;
 int DP_EDP_BACKLIGHT_BRIGHTNESS_MSB ;
 int DRM_DEBUG_KMS (char*,int ) ;
 scalar_t__ drm_dp_dpcd_read (int *,int ,int**,int) ;
 struct intel_dp* enc_to_intel_dp (int *) ;

__attribute__((used)) static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&connector->encoder->base);
 u8 read_val[2] = { 0x0 };
 u16 level = 0;

 if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
        &read_val, sizeof(read_val)) < 0) {
  DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
         DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
  return 0;
 }
 level = read_val[0];
 if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT)
  level = (read_val[0] << 8 | read_val[1]);

 return level;
}
