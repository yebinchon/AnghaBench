
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int SDE_HOTPLUG_MASK ;
 int SDE_HOTPLUG_MASK_CPT ;
 int hpd_cpt ;
 int hpd_ibx ;
 int ibx_display_interrupt_update (struct drm_i915_private*,int ,int ) ;
 int ibx_hpd_detection_setup (struct drm_i915_private*) ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int ) ;

__attribute__((used)) static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_irqs, enabled_irqs;

 if (HAS_PCH_IBX(dev_priv)) {
  hotplug_irqs = SDE_HOTPLUG_MASK;
  enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_ibx);
 } else {
  hotplug_irqs = SDE_HOTPLUG_MASK_CPT;
  enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_cpt);
 }

 ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);

 ibx_hpd_detection_setup(dev_priv);
}
