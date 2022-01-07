
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PORT_HOTPLUG_EN ;
 int WARN_ON (int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void
i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
         u32 mask,
         u32 bits)
{
 u32 val;

 lockdep_assert_held(&dev_priv->irq_lock);
 WARN_ON(bits & ~mask);

 val = I915_READ(PORT_HOTPLUG_EN);
 val &= ~mask;
 val |= bits;
 I915_WRITE(PORT_HOTPLUG_EN, val);
}
