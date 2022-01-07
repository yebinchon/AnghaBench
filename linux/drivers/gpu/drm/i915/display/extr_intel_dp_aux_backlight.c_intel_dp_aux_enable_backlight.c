
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct intel_dp {int* edp_dpcd; int aux; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_5__ {int level; } ;
struct TYPE_6__ {TYPE_2__ backlight; } ;
struct intel_connector {TYPE_3__ panel; TYPE_1__* encoder; } ;
struct drm_connector_state {int connector; } ;
struct TYPE_4__ {int base; } ;



 int DP_EDP_BACKLIGHT_CONTROL_MODE_MASK ;



 int DP_EDP_BACKLIGHT_FREQ_AUX_SET_CAP ;
 int DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE ;
 int DP_EDP_BACKLIGHT_MODE_SET_REGISTER ;
 int DRM_DEBUG_KMS (char*,...) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 scalar_t__ drm_dp_dpcd_writeb (int *,int ,int) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_dp_aux_set_backlight (struct drm_connector_state const*,int ) ;
 scalar_t__ intel_dp_aux_set_pwm_freq (struct intel_connector*) ;
 int set_aux_backlight_enable (struct intel_dp*,int) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_state,
       const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct intel_dp *intel_dp = enc_to_intel_dp(&connector->encoder->base);
 u8 dpcd_buf, new_dpcd_buf, edp_backlight_mode;

 if (drm_dp_dpcd_readb(&intel_dp->aux,
   DP_EDP_BACKLIGHT_MODE_SET_REGISTER, &dpcd_buf) != 1) {
  DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
         DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
  return;
 }

 new_dpcd_buf = dpcd_buf;
 edp_backlight_mode = dpcd_buf & DP_EDP_BACKLIGHT_CONTROL_MODE_MASK;

 switch (edp_backlight_mode) {
 case 128:
 case 130:
 case 129:
  new_dpcd_buf &= ~DP_EDP_BACKLIGHT_CONTROL_MODE_MASK;
  new_dpcd_buf |= 131;
  break;


 case 131:
 default:
  break;
 }

 if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_FREQ_AUX_SET_CAP)
  if (intel_dp_aux_set_pwm_freq(connector))
   new_dpcd_buf |= DP_EDP_BACKLIGHT_FREQ_AUX_SET_ENABLE;

 if (new_dpcd_buf != dpcd_buf) {
  if (drm_dp_dpcd_writeb(&intel_dp->aux,
   DP_EDP_BACKLIGHT_MODE_SET_REGISTER, new_dpcd_buf) < 0) {
   DRM_DEBUG_KMS("Failed to write aux backlight mode\n");
  }
 }

 set_aux_backlight_enable(intel_dp, 1);
 intel_dp_aux_set_backlight(conn_state, connector->panel.backlight.level);
}
