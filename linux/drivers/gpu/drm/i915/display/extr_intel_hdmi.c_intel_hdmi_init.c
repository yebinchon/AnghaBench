
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int type; int port; int crtc_mask; int cloneable; int power_domain; void* enable; int pre_enable; int post_disable; int pre_pll_enable; int post_pll_disable; int get_config; int get_hw_state; int disable; int compute_config; int hotplug; int base; } ;
struct TYPE_4__ {int output_reg; } ;
struct TYPE_3__ {int hdmi_reg; } ;
struct intel_digital_port {int max_lanes; int aux_ch; TYPE_2__ dp; TYPE_1__ hdmi; struct intel_encoder base; } ;
struct intel_connector {int dummy; } ;
struct drm_i915_private {int drm; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_HDMI ;
 int INVALID_MMIO_REG ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PORT_D ;
 int chv_hdmi_post_disable ;
 int chv_hdmi_post_pll_disable ;
 int chv_hdmi_pre_enable ;
 int chv_hdmi_pre_pll_enable ;
 void* cpt_enable_hdmi ;
 int drm_encoder_init (int *,int *,int *,int ,char*,int ) ;
 int g4x_disable_hdmi ;
 void* g4x_enable_hdmi ;
 void* ibx_enable_hdmi ;
 int intel_bios_port_aux_ch (struct drm_i915_private*,int) ;
 struct intel_connector* intel_connector_alloc () ;
 int intel_hdmi_compute_config ;
 int intel_hdmi_enc_funcs ;
 int intel_hdmi_get_config ;
 int intel_hdmi_get_hw_state ;
 int intel_hdmi_hotplug ;
 int intel_hdmi_init_connector (struct intel_digital_port*,struct intel_connector*) ;
 int intel_hdmi_pre_enable ;
 int intel_infoframe_init (struct intel_digital_port*) ;
 int intel_port_to_power_domain (int) ;
 int kfree (struct intel_digital_port*) ;
 struct intel_digital_port* kzalloc (int,int ) ;
 int pch_disable_hdmi ;
 int pch_post_disable_hdmi ;
 int port_name (int) ;
 void* vlv_enable_hdmi ;
 int vlv_hdmi_post_disable ;
 int vlv_hdmi_pre_enable ;
 int vlv_hdmi_pre_pll_enable ;

void intel_hdmi_init(struct drm_i915_private *dev_priv,
       i915_reg_t hdmi_reg, enum port port)
{
 struct intel_digital_port *intel_dig_port;
 struct intel_encoder *intel_encoder;
 struct intel_connector *intel_connector;

 intel_dig_port = kzalloc(sizeof(*intel_dig_port), GFP_KERNEL);
 if (!intel_dig_port)
  return;

 intel_connector = intel_connector_alloc();
 if (!intel_connector) {
  kfree(intel_dig_port);
  return;
 }

 intel_encoder = &intel_dig_port->base;

 drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
    &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
    "HDMI %c", port_name(port));

 intel_encoder->hotplug = intel_hdmi_hotplug;
 intel_encoder->compute_config = intel_hdmi_compute_config;
 if (HAS_PCH_SPLIT(dev_priv)) {
  intel_encoder->disable = pch_disable_hdmi;
  intel_encoder->post_disable = pch_post_disable_hdmi;
 } else {
  intel_encoder->disable = g4x_disable_hdmi;
 }
 intel_encoder->get_hw_state = intel_hdmi_get_hw_state;
 intel_encoder->get_config = intel_hdmi_get_config;
 if (IS_CHERRYVIEW(dev_priv)) {
  intel_encoder->pre_pll_enable = chv_hdmi_pre_pll_enable;
  intel_encoder->pre_enable = chv_hdmi_pre_enable;
  intel_encoder->enable = vlv_enable_hdmi;
  intel_encoder->post_disable = chv_hdmi_post_disable;
  intel_encoder->post_pll_disable = chv_hdmi_post_pll_disable;
 } else if (IS_VALLEYVIEW(dev_priv)) {
  intel_encoder->pre_pll_enable = vlv_hdmi_pre_pll_enable;
  intel_encoder->pre_enable = vlv_hdmi_pre_enable;
  intel_encoder->enable = vlv_enable_hdmi;
  intel_encoder->post_disable = vlv_hdmi_post_disable;
 } else {
  intel_encoder->pre_enable = intel_hdmi_pre_enable;
  if (HAS_PCH_CPT(dev_priv))
   intel_encoder->enable = cpt_enable_hdmi;
  else if (HAS_PCH_IBX(dev_priv))
   intel_encoder->enable = ibx_enable_hdmi;
  else
   intel_encoder->enable = g4x_enable_hdmi;
 }

 intel_encoder->type = INTEL_OUTPUT_HDMI;
 intel_encoder->power_domain = intel_port_to_power_domain(port);
 intel_encoder->port = port;
 if (IS_CHERRYVIEW(dev_priv)) {
  if (port == PORT_D)
   intel_encoder->crtc_mask = 1 << 2;
  else
   intel_encoder->crtc_mask = (1 << 0) | (1 << 1);
 } else {
  intel_encoder->crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);
 }
 intel_encoder->cloneable = 1 << INTEL_OUTPUT_ANALOG;





 if (IS_G4X(dev_priv))
  intel_encoder->cloneable |= 1 << INTEL_OUTPUT_HDMI;

 intel_dig_port->hdmi.hdmi_reg = hdmi_reg;
 intel_dig_port->dp.output_reg = INVALID_MMIO_REG;
 intel_dig_port->max_lanes = 4;

 intel_infoframe_init(intel_dig_port);

 intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
 intel_hdmi_init_connector(intel_dig_port, intel_connector);
}
