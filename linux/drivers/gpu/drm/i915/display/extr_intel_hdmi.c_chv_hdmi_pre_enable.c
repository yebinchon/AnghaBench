
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int (* set_infoframes ) (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct intel_crtc_state {int has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int chv_phy_pre_encoder_enable (struct intel_encoder*,struct intel_crtc_state const*) ;
 int chv_phy_release_cl2_override (struct intel_encoder*) ;
 int chv_set_phy_signal_level (struct intel_encoder*,int,int,int) ;
 struct intel_digital_port* enc_to_dig_port (TYPE_1__*) ;
 int g4x_enable_hdmi (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int stub1 (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vlv_wait_port_ready (struct drm_i915_private*,struct intel_digital_port*,int) ;

__attribute__((used)) static void chv_hdmi_pre_enable(struct intel_encoder *encoder,
    const struct intel_crtc_state *pipe_config,
    const struct drm_connector_state *conn_state)
{
 struct intel_digital_port *dport = enc_to_dig_port(&encoder->base);
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);

 chv_phy_pre_encoder_enable(encoder, pipe_config);



 chv_set_phy_signal_level(encoder, 128, 102, 0);

 dport->set_infoframes(encoder,
         pipe_config->has_infoframe,
         pipe_config, conn_state);

 g4x_enable_hdmi(encoder, pipe_config, conn_state);

 vlv_wait_port_ready(dev_priv, dport, 0x0);


 chv_phy_release_cl2_override(encoder);
}
