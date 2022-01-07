
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int ddi_io_power_domain; int (* set_infoframes ) (struct intel_encoder*,int,struct intel_crtc_state const*,struct drm_connector_state const*) ;struct intel_hdmi hdmi; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 int intel_ddi_clk_disable (struct intel_encoder*) ;
 int intel_ddi_disable_pipe_clock (struct intel_crtc_state const*) ;
 int intel_disable_ddi_buf (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_display_power_put_unchecked (struct drm_i915_private*,int ) ;
 int intel_dp_dual_mode_set_tmds_output (struct intel_hdmi*,int) ;
 int stub1 (struct intel_encoder*,int,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_ddi_post_disable_hdmi(struct intel_encoder *encoder,
     const struct intel_crtc_state *old_crtc_state,
     const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_digital_port *dig_port = enc_to_dig_port(&encoder->base);
 struct intel_hdmi *intel_hdmi = &dig_port->hdmi;

 dig_port->set_infoframes(encoder, 0,
     old_crtc_state, old_conn_state);

 intel_ddi_disable_pipe_clock(old_crtc_state);

 intel_disable_ddi_buf(encoder, old_crtc_state);

 intel_display_power_put_unchecked(dev_priv,
       dig_port->ddi_io_power_domain);

 intel_ddi_clk_disable(encoder);

 intel_dp_dual_mode_set_tmds_output(intel_hdmi, 0);
}
