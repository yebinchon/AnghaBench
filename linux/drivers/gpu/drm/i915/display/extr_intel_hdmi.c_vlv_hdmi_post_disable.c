
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int vlv_phy_reset_lanes (struct intel_encoder*,struct intel_crtc_state const*) ;

__attribute__((used)) static void vlv_hdmi_post_disable(struct intel_encoder *encoder,
      const struct intel_crtc_state *old_crtc_state,
      const struct drm_connector_state *old_conn_state)
{

 vlv_phy_reset_lanes(encoder, old_crtc_state);
}
