
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irqs_enabled; } ;
struct drm_i915_private {TYPE_1__ runtime_pm; } ;


 int intel_irq_postinstall (struct drm_i915_private*) ;
 int intel_irq_reset (struct drm_i915_private*) ;

void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_priv)
{
 dev_priv->runtime_pm.irqs_enabled = 1;
 intel_irq_reset(dev_priv);
 intel_irq_postinstall(dev_priv);
}
