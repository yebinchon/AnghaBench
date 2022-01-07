
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;


 int i915_hotplug_interrupt_update_locked (struct drm_i915_private*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
       u32 mask,
       u32 bits)
{
 spin_lock_irq(&dev_priv->irq_lock);
 i915_hotplug_interrupt_update_locked(dev_priv, mask, bits);
 spin_unlock_irq(&dev_priv->irq_lock);
}
