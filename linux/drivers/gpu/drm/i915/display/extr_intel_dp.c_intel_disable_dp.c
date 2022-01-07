
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int link_trained; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_audio_codec_disable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_dp_sink_dpms (struct intel_dp*,int ) ;
 int intel_edp_backlight_off (struct drm_connector_state const*) ;
 int intel_edp_panel_off (struct intel_dp*) ;
 int intel_edp_panel_vdd_on (struct intel_dp*) ;

__attribute__((used)) static void intel_disable_dp(struct intel_encoder *encoder,
        const struct intel_crtc_state *old_crtc_state,
        const struct drm_connector_state *old_conn_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);

 intel_dp->link_trained = 0;

 if (old_crtc_state->has_audio)
  intel_audio_codec_disable(encoder,
       old_crtc_state, old_conn_state);



 intel_edp_panel_vdd_on(intel_dp);
 intel_edp_backlight_off(old_conn_state);
 intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_OFF);
 intel_edp_panel_off(intel_dp);
}
