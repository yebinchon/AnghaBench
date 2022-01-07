
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_connector_state {int best_encoder; } ;


 int DRM_DEBUG_KMS (char*) ;
 int _intel_edp_backlight_off (struct intel_dp*) ;
 struct intel_dp* enc_to_intel_dp (int ) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int intel_panel_disable_backlight (struct drm_connector_state const*) ;

void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(old_conn_state->best_encoder);

 if (!intel_dp_is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("\n");

 _intel_edp_backlight_off(intel_dp);
 intel_panel_disable_backlight(old_conn_state);
}
