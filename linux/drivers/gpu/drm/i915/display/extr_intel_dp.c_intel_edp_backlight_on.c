
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int best_encoder; } ;


 int DRM_DEBUG_KMS (char*) ;
 int _intel_edp_backlight_on (struct intel_dp*) ;
 struct intel_dp* enc_to_intel_dp (int ) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int intel_panel_enable_backlight (struct intel_crtc_state const*,struct drm_connector_state const*) ;

void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
       const struct drm_connector_state *conn_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(conn_state->best_encoder);

 if (!intel_dp_is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("\n");

 intel_panel_enable_backlight(crtc_state, conn_state);
 _intel_edp_backlight_on(intel_dp);
}
