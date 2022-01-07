
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int display_irqs_enabled; int irq_lock; } ;


 scalar_t__ intel_irqs_enabled (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;
 int vlv_display_irq_reset (struct drm_i915_private*) ;

void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
{
 lockdep_assert_held(&dev_priv->irq_lock);

 if (!dev_priv->display_irqs_enabled)
  return;

 dev_priv->display_irqs_enabled = 0;

 if (intel_irqs_enabled(dev_priv))
  vlv_display_irq_reset(dev_priv);
}
