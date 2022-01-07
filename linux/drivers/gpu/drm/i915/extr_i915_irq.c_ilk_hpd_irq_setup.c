
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DE_DP_A_HOTPLUG ;
 int DE_DP_A_HOTPLUG_IVB ;
 int GEN8_PORT_DP_A_HOTPLUG ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int bdw_update_port_irq (struct drm_i915_private*,int ,int ) ;
 int hpd_bdw ;
 int hpd_ilk ;
 int hpd_ivb ;
 int ibx_hpd_irq_setup (struct drm_i915_private*) ;
 int ilk_hpd_detection_setup (struct drm_i915_private*) ;
 int ilk_update_display_irq (struct drm_i915_private*,int ,int ) ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int ) ;

__attribute__((used)) static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_irqs, enabled_irqs;

 if (INTEL_GEN(dev_priv) >= 8) {
  hotplug_irqs = GEN8_PORT_DP_A_HOTPLUG;
  enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_bdw);

  bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
 } else if (INTEL_GEN(dev_priv) >= 7) {
  hotplug_irqs = DE_DP_A_HOTPLUG_IVB;
  enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_ivb);

  ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
 } else {
  hotplug_irqs = DE_DP_A_HOTPLUG;
  enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_ilk);

  ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
 }

 ilk_hpd_detection_setup(dev_priv);

 ibx_hpd_irq_setup(dev_priv);
}
