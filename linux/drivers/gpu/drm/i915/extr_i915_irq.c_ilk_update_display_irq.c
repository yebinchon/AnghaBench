
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_mask; int irq_lock; } ;


 int DEIMR ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 scalar_t__ WARN_ON (int) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;

void ilk_update_display_irq(struct drm_i915_private *dev_priv,
       u32 interrupt_mask,
       u32 enabled_irq_mask)
{
 u32 new_val;

 lockdep_assert_held(&dev_priv->irq_lock);

 WARN_ON(enabled_irq_mask & ~interrupt_mask);

 if (WARN_ON(!intel_irqs_enabled(dev_priv)))
  return;

 new_val = dev_priv->irq_mask;
 new_val &= ~interrupt_mask;
 new_val |= (~enabled_irq_mask & interrupt_mask);

 if (new_val != dev_priv->irq_mask) {
  dev_priv->irq_mask = new_val;
  I915_WRITE(DEIMR, dev_priv->irq_mask);
  POSTING_READ(DEIMR);
 }
}
