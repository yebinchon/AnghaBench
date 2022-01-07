
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDEIMR ;
 scalar_t__ WARN_ON (int) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;

void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
      u32 interrupt_mask,
      u32 enabled_irq_mask)
{
 u32 sdeimr = I915_READ(SDEIMR);
 sdeimr &= ~interrupt_mask;
 sdeimr |= (~enabled_irq_mask & interrupt_mask);

 WARN_ON(enabled_irq_mask & ~interrupt_mask);

 lockdep_assert_held(&dev_priv->irq_lock);

 if (WARN_ON(!intel_irqs_enabled(dev_priv)))
  return;

 I915_WRITE(SDEIMR, sdeimr);
 POSTING_READ(SDEIMR);
}
