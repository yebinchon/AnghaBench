
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cloneable; int crtc_mask; int base; int enable; int get_hw_state; int get_config; int port; int disable; int compute_config; int post_disable; int pre_enable; int pre_pll_enable; int hotplug; int hpd_pin; int power_domain; int type; } ;
struct intel_crt {TYPE_1__ base; scalar_t__ force_hotplug_required; int adpa_reg; struct intel_connector* connector; } ;
struct drm_connector {int interlace_allowed; scalar_t__ doublescan_allowed; } ;
struct intel_connector {int polled; int get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int fdi_rx_config; int drm; } ;
typedef int i915_reg_t ;


 int ADPA ;
 int ADPA_DAC_ENABLE ;
 int ADPA_HSYNC_CNTL_DISABLE ;
 int ADPA_VSYNC_CNTL_DISABLE ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_ENCODER_DAC ;
 int FDI_RX_CTL (int ) ;
 int FDI_RX_LINK_REVERSAL_OVERRIDE ;
 int FDI_RX_POLARITY_REVERSED_LPT ;
 int GFP_KERNEL ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int HPD_CRT ;
 scalar_t__ I915_HAS_HOTPLUG (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_DVO ;
 int INTEL_OUTPUT_HDMI ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PCH_ADPA ;
 int PIPE_A ;
 int PORT_E ;
 int PORT_NONE ;
 int POWER_DOMAIN_PORT_CRT ;
 int VLV_ADPA ;
 int dmi_check_system (int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int *,struct drm_connector*,int *,int ) ;
 int drm_encoder_init (int *,int *,int *,int ,char*) ;
 int hsw_crt_compute_config ;
 int hsw_crt_get_config ;
 int hsw_disable_crt ;
 int hsw_enable_crt ;
 int hsw_post_disable_crt ;
 int hsw_pre_enable_crt ;
 int hsw_pre_pll_enable_crt ;
 struct intel_connector* intel_connector_alloc () ;
 int intel_connector_attach_encoder (struct intel_connector*,TYPE_1__*) ;
 int intel_connector_get_hw_state ;
 int intel_crt_compute_config ;
 int intel_crt_connector_funcs ;
 int intel_crt_connector_helper_funcs ;
 int intel_crt_enc_funcs ;
 int intel_crt_get_config ;
 int intel_crt_get_hw_state ;
 int intel_crt_reset (int *) ;
 int intel_ddi_get_hw_state ;
 int intel_disable_crt ;
 int intel_enable_crt ;
 int intel_encoder_hotplug ;
 int intel_spurious_crt_detect ;
 int kfree (struct intel_crt*) ;
 struct intel_crt* kzalloc (int,int ) ;
 int pch_crt_compute_config ;
 int pch_disable_crt ;
 int pch_post_disable_crt ;

void intel_crt_init(struct drm_i915_private *dev_priv)
{
 struct drm_connector *connector;
 struct intel_crt *crt;
 struct intel_connector *intel_connector;
 i915_reg_t adpa_reg;
 u32 adpa;

 if (HAS_PCH_SPLIT(dev_priv))
  adpa_reg = PCH_ADPA;
 else if (IS_VALLEYVIEW(dev_priv))
  adpa_reg = VLV_ADPA;
 else
  adpa_reg = ADPA;

 adpa = I915_READ(adpa_reg);
 if ((adpa & ADPA_DAC_ENABLE) == 0) {
  I915_WRITE(adpa_reg, adpa | ADPA_DAC_ENABLE |
      ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);
  if ((I915_READ(adpa_reg) & ADPA_DAC_ENABLE) == 0)
   return;
  I915_WRITE(adpa_reg, adpa);
 }

 crt = kzalloc(sizeof(struct intel_crt), GFP_KERNEL);
 if (!crt)
  return;

 intel_connector = intel_connector_alloc();
 if (!intel_connector) {
  kfree(crt);
  return;
 }

 connector = &intel_connector->base;
 crt->connector = intel_connector;
 drm_connector_init(&dev_priv->drm, &intel_connector->base,
      &intel_crt_connector_funcs, DRM_MODE_CONNECTOR_VGA);

 drm_encoder_init(&dev_priv->drm, &crt->base.base, &intel_crt_enc_funcs,
    DRM_MODE_ENCODER_DAC, "CRT");

 intel_connector_attach_encoder(intel_connector, &crt->base);

 crt->base.type = INTEL_OUTPUT_ANALOG;
 crt->base.cloneable = (1 << INTEL_OUTPUT_DVO) | (1 << INTEL_OUTPUT_HDMI);
 if (IS_I830(dev_priv))
  crt->base.crtc_mask = (1 << 0);
 else
  crt->base.crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);

 if (IS_GEN(dev_priv, 2))
  connector->interlace_allowed = 0;
 else
  connector->interlace_allowed = 1;
 connector->doublescan_allowed = 0;

 crt->adpa_reg = adpa_reg;

 crt->base.power_domain = POWER_DOMAIN_PORT_CRT;

 if (I915_HAS_HOTPLUG(dev_priv) &&
     !dmi_check_system(intel_spurious_crt_detect)) {
  crt->base.hpd_pin = HPD_CRT;
  crt->base.hotplug = intel_encoder_hotplug;
 }

 if (HAS_DDI(dev_priv)) {
  crt->base.port = PORT_E;
  crt->base.get_config = hsw_crt_get_config;
  crt->base.get_hw_state = intel_ddi_get_hw_state;
  crt->base.compute_config = hsw_crt_compute_config;
  crt->base.pre_pll_enable = hsw_pre_pll_enable_crt;
  crt->base.pre_enable = hsw_pre_enable_crt;
  crt->base.enable = hsw_enable_crt;
  crt->base.disable = hsw_disable_crt;
  crt->base.post_disable = hsw_post_disable_crt;
 } else {
  if (HAS_PCH_SPLIT(dev_priv)) {
   crt->base.compute_config = pch_crt_compute_config;
   crt->base.disable = pch_disable_crt;
   crt->base.post_disable = pch_post_disable_crt;
  } else {
   crt->base.compute_config = intel_crt_compute_config;
   crt->base.disable = intel_disable_crt;
  }
  crt->base.port = PORT_NONE;
  crt->base.get_config = intel_crt_get_config;
  crt->base.get_hw_state = intel_crt_get_hw_state;
  crt->base.enable = intel_enable_crt;
 }
 intel_connector->get_hw_state = intel_connector_get_hw_state;

 drm_connector_helper_add(connector, &intel_crt_connector_helper_funcs);

 if (!I915_HAS_HOTPLUG(dev_priv))
  intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;




 crt->force_hotplug_required = 0;






 if (HAS_PCH_LPT(dev_priv)) {
  u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
     FDI_RX_LINK_REVERSAL_OVERRIDE;

  dev_priv->fdi_rx_config = I915_READ(FDI_RX_CTL(PIPE_A)) & fdi_config;
 }

 intel_crt_reset(&crt->base.base);
}
