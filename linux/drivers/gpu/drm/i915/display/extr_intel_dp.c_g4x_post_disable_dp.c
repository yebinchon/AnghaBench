
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int port; int base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int PORT_A ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int intel_dp_link_down (struct intel_encoder*,struct intel_crtc_state const*) ;
 int ironlake_edp_pll_off (struct intel_dp*,struct intel_crtc_state const*) ;

__attribute__((used)) static void g4x_post_disable_dp(struct intel_encoder *encoder,
    const struct intel_crtc_state *old_crtc_state,
    const struct drm_connector_state *old_conn_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 enum port port = encoder->port;







 intel_dp_link_down(encoder, old_crtc_state);


 if (port == PORT_A)
  ironlake_edp_pll_off(intel_dp, old_crtc_state);
}
