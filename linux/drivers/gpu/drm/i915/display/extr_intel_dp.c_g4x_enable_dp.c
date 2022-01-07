
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int intel_edp_backlight_on (struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_enable_dp (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;

__attribute__((used)) static void g4x_enable_dp(struct intel_encoder *encoder,
     const struct intel_crtc_state *pipe_config,
     const struct drm_connector_state *conn_state)
{
 intel_enable_dp(encoder, pipe_config, conn_state);
 intel_edp_backlight_on(pipe_config, conn_state);
}
