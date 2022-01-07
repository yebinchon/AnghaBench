
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int* edp_dpcd; } ;
struct intel_connector {TYPE_1__* encoder; } ;
struct TYPE_2__ {int base; } ;


 int DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP ;
 int DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP ;
 int DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP ;
 int DRM_DEBUG_KMS (char*) ;
 struct intel_dp* enc_to_intel_dp (int *) ;

__attribute__((used)) static bool
intel_dp_aux_display_control_capable(struct intel_connector *connector)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&connector->encoder->base);




 if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
     (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
     !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP)) {
  DRM_DEBUG_KMS("AUX Backlight Control Supported!\n");
  return 1;
 }
 return 0;
}
