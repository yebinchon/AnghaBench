
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct intel_encoder {int crtc_mask; int port; scalar_t__ cloneable; int power_domain; int type; int post_disable; void* disable; void* enable; int pre_enable; int pre_pll_enable; int post_pll_disable; int suspend; int update_pipe; int get_config; int get_hw_state; int compute_config; int hotplug; struct drm_encoder base; } ;
struct TYPE_2__ {int output_reg; } ;
struct intel_digital_port {int max_lanes; int aux_ch; int hpd_pulse; TYPE_1__ dp; struct intel_encoder base; } ;
struct intel_connector {int max_lanes; int aux_ch; int hpd_pulse; TYPE_1__ dp; struct intel_encoder base; } ;
struct drm_i915_private {int drm; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int INTEL_OUTPUT_DP ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PORT_A ;
 int PORT_D ;
 int chv_dp_post_pll_disable ;
 int chv_dp_pre_pll_enable ;
 int chv_post_disable_dp ;
 int chv_pre_enable_dp ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 scalar_t__ drm_encoder_init (int *,struct drm_encoder*,int *,int ,char*,int ) ;
 void* g4x_disable_dp ;
 void* g4x_enable_dp ;
 int g4x_post_disable_dp ;
 int g4x_pre_enable_dp ;
 int intel_bios_port_aux_ch (struct drm_i915_private*,int) ;
 struct intel_digital_port* intel_connector_alloc () ;
 int intel_dp_compute_config ;
 int intel_dp_enc_funcs ;
 int intel_dp_encoder_suspend ;
 int intel_dp_get_config ;
 int intel_dp_get_hw_state ;
 int intel_dp_hotplug ;
 int intel_dp_hpd_pulse ;
 int intel_dp_init_connector (struct intel_digital_port*,struct intel_digital_port*) ;
 int intel_infoframe_init (struct intel_digital_port*) ;
 int intel_panel_update_backlight ;
 int intel_port_to_power_domain (int) ;
 int kfree (struct intel_digital_port*) ;
 struct intel_digital_port* kzalloc (int,int ) ;
 int port_name (int) ;
 void* vlv_disable_dp ;
 int vlv_dp_pre_pll_enable ;
 void* vlv_enable_dp ;
 int vlv_post_disable_dp ;
 int vlv_pre_enable_dp ;

bool intel_dp_init(struct drm_i915_private *dev_priv,
     i915_reg_t output_reg,
     enum port port)
{
 struct intel_digital_port *intel_dig_port;
 struct intel_encoder *intel_encoder;
 struct drm_encoder *encoder;
 struct intel_connector *intel_connector;

 intel_dig_port = kzalloc(sizeof(*intel_dig_port), GFP_KERNEL);
 if (!intel_dig_port)
  return 0;

 intel_connector = intel_connector_alloc();
 if (!intel_connector)
  goto err_connector_alloc;

 intel_encoder = &intel_dig_port->base;
 encoder = &intel_encoder->base;

 if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
        &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
        "DP %c", port_name(port)))
  goto err_encoder_init;

 intel_encoder->hotplug = intel_dp_hotplug;
 intel_encoder->compute_config = intel_dp_compute_config;
 intel_encoder->get_hw_state = intel_dp_get_hw_state;
 intel_encoder->get_config = intel_dp_get_config;
 intel_encoder->update_pipe = intel_panel_update_backlight;
 intel_encoder->suspend = intel_dp_encoder_suspend;
 if (IS_CHERRYVIEW(dev_priv)) {
  intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;
  intel_encoder->pre_enable = chv_pre_enable_dp;
  intel_encoder->enable = vlv_enable_dp;
  intel_encoder->disable = vlv_disable_dp;
  intel_encoder->post_disable = chv_post_disable_dp;
  intel_encoder->post_pll_disable = chv_dp_post_pll_disable;
 } else if (IS_VALLEYVIEW(dev_priv)) {
  intel_encoder->pre_pll_enable = vlv_dp_pre_pll_enable;
  intel_encoder->pre_enable = vlv_pre_enable_dp;
  intel_encoder->enable = vlv_enable_dp;
  intel_encoder->disable = vlv_disable_dp;
  intel_encoder->post_disable = vlv_post_disable_dp;
 } else {
  intel_encoder->pre_enable = g4x_pre_enable_dp;
  intel_encoder->enable = g4x_enable_dp;
  intel_encoder->disable = g4x_disable_dp;
  intel_encoder->post_disable = g4x_post_disable_dp;
 }

 intel_dig_port->dp.output_reg = output_reg;
 intel_dig_port->max_lanes = 4;

 intel_encoder->type = INTEL_OUTPUT_DP;
 intel_encoder->power_domain = intel_port_to_power_domain(port);
 if (IS_CHERRYVIEW(dev_priv)) {
  if (port == PORT_D)
   intel_encoder->crtc_mask = 1 << 2;
  else
   intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
 } else {
  intel_encoder->crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);
 }
 intel_encoder->cloneable = 0;
 intel_encoder->port = port;

 intel_dig_port->hpd_pulse = intel_dp_hpd_pulse;

 if (port != PORT_A)
  intel_infoframe_init(intel_dig_port);

 intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
 if (!intel_dp_init_connector(intel_dig_port, intel_connector))
  goto err_init_connector;

 return 1;

err_init_connector:
 drm_encoder_cleanup(encoder);
err_encoder_init:
 kfree(intel_connector);
err_connector_alloc:
 kfree(intel_dig_port);
 return 0;
}
