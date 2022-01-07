
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int intel_enable_dp (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int vlv_phy_pre_encoder_enable (struct intel_encoder*,struct intel_crtc_state const*) ;

__attribute__((used)) static void vlv_pre_enable_dp(struct intel_encoder *encoder,
         const struct intel_crtc_state *pipe_config,
         const struct drm_connector_state *conn_state)
{
 vlv_phy_pre_encoder_enable(encoder, pipe_config);

 intel_enable_dp(encoder, pipe_config, conn_state);
}
