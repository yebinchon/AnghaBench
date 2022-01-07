
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;


 int GEN8_DE_PORT_IMR ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 scalar_t__ WARN_ON (int) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void bdw_update_port_irq(struct drm_i915_private *dev_priv,
    u32 interrupt_mask,
    u32 enabled_irq_mask)
{
 u32 new_val;
 u32 old_val;

 lockdep_assert_held(&dev_priv->irq_lock);

 WARN_ON(enabled_irq_mask & ~interrupt_mask);

 if (WARN_ON(!intel_irqs_enabled(dev_priv)))
  return;

 old_val = I915_READ(GEN8_DE_PORT_IMR);

 new_val = old_val;
 new_val &= ~interrupt_mask;
 new_val |= (~enabled_irq_mask & interrupt_mask);

 if (new_val != old_val) {
  I915_WRITE(GEN8_DE_PORT_IMR, new_val);
  POSTING_READ(GEN8_DE_PORT_IMR);
 }
}
