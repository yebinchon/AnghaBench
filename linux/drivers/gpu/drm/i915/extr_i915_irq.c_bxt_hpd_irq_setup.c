
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int BXT_DE_PORT_HOTPLUG_MASK ;
 int __bxt_hpd_detection_setup (struct drm_i915_private*,int ) ;
 int bdw_update_port_irq (struct drm_i915_private*,int ,int ) ;
 int hpd_bxt ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int ) ;

__attribute__((used)) static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_irqs, enabled_irqs;

 enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd_bxt);
 hotplug_irqs = BXT_DE_PORT_HOTPLUG_MASK;

 bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);

 __bxt_hpd_detection_setup(dev_priv, enabled_irqs);
}
