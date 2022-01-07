
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_ddi_set_pipe_settings (struct intel_crtc_state const*) ;
 int intel_edp_drrs_enable (struct intel_dp*,struct intel_crtc_state const*) ;
 int intel_panel_update_backlight (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_psr_update (struct intel_dp*,struct intel_crtc_state const*) ;

__attribute__((used)) static void intel_ddi_update_pipe_dp(struct intel_encoder *encoder,
         const struct intel_crtc_state *crtc_state,
         const struct drm_connector_state *conn_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);

 intel_ddi_set_pipe_settings(crtc_state);

 intel_psr_update(intel_dp, crtc_state);
 intel_edp_drrs_enable(intel_dp, crtc_state);

 intel_panel_update_backlight(encoder, crtc_state, conn_state);
}
