
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
 int intel_dp_prepare (struct intel_encoder*,struct intel_crtc_state const*) ;
 int ironlake_edp_pll_on (struct intel_dp*,struct intel_crtc_state const*) ;

__attribute__((used)) static void g4x_pre_enable_dp(struct intel_encoder *encoder,
         const struct intel_crtc_state *pipe_config,
         const struct drm_connector_state *conn_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 enum port port = encoder->port;

 intel_dp_prepare(encoder, pipe_config);


 if (port == PORT_A)
  ironlake_edp_pll_on(intel_dp, pipe_config);
}
