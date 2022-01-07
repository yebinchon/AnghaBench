
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_digital_port {int (* set_infoframes ) (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct intel_crtc_state {int has_infoframe; } ;
struct drm_connector_state {int dummy; } ;


 struct intel_digital_port* enc_to_dig_port (int *) ;
 int intel_hdmi_prepare (struct intel_encoder*,struct intel_crtc_state const*) ;
 int stub1 (struct intel_encoder*,int ,struct intel_crtc_state const*,struct drm_connector_state const*) ;

__attribute__((used)) static void intel_hdmi_pre_enable(struct intel_encoder *encoder,
      const struct intel_crtc_state *pipe_config,
      const struct drm_connector_state *conn_state)
{
 struct intel_digital_port *intel_dig_port =
  enc_to_dig_port(&encoder->base);

 intel_hdmi_prepare(encoder, pipe_config);

 intel_dig_port->set_infoframes(encoder,
           pipe_config->has_infoframe,
           pipe_config, conn_state);
}
