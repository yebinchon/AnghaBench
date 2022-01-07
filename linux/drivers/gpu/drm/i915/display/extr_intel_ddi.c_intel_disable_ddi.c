
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int connector; } ;


 int INTEL_OUTPUT_HDMI ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_disable_ddi_dp (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_disable_ddi_hdmi (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_hdcp_disable (int ) ;
 int to_intel_connector (int ) ;

__attribute__((used)) static void intel_disable_ddi(struct intel_encoder *encoder,
         const struct intel_crtc_state *old_crtc_state,
         const struct drm_connector_state *old_conn_state)
{
 intel_hdcp_disable(to_intel_connector(old_conn_state->connector));

 if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
  intel_disable_ddi_hdmi(encoder, old_crtc_state, old_conn_state);
 else
  intel_disable_ddi_dp(encoder, old_crtc_state, old_conn_state);
}
