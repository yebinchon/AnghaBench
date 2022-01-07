
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int SDE_HOTPLUG_MASK_SPT ;
 int hpd_spt ;
 int ibx_display_interrupt_update (struct drm_i915_private*,int ,int ) ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int ) ;
 int spt_hpd_detection_setup (struct drm_i915_private*) ;

__attribute__((used)) static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_irqs, enabled_irqs;

 hotplug_irqs = SDE_HOTPLUG_MASK_SPT;
 enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_spt);

 ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);

 spt_hpd_detection_setup(dev_priv);
}
