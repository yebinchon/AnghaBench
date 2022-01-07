
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int (* set_infoframes ) (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct intel_crtc_state {int has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 int g4x_enable_hdmi (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int stub1 (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 int vlv_phy_pre_encoder_enable (struct intel_encoder*,struct intel_crtc_state const*) ;
 int vlv_set_phy_signal_level (struct intel_encoder*,int,int,int,int) ;
 int vlv_wait_port_ready (struct drm_i915_private*,struct intel_digital_port*,int) ;

__attribute__((used)) static void vlv_hdmi_pre_enable(struct intel_encoder *encoder,
    const struct intel_crtc_state *pipe_config,
    const struct drm_connector_state *conn_state)
{
 struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

 vlv_phy_pre_encoder_enable(encoder, pipe_config);


 vlv_set_phy_signal_level(encoder, 0x2b245f5f, 0x00002000, 0x5578b83a,
     0x2b247878);

 dport->set_infoframes(encoder,
         pipe_config->has_infoframe,
         pipe_config, conn_state);

 g4x_enable_hdmi(encoder, pipe_config, conn_state);

 vlv_wait_port_ready(dev_priv, dport, 0x0);
}
