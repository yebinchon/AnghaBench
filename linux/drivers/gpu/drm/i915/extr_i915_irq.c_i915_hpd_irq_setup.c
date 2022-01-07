
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int irq_lock; } ;


 int CRT_HOTPLUG_ACTIVATION_PERIOD_64 ;
 int CRT_HOTPLUG_VOLTAGE_COMPARE_50 ;
 int CRT_HOTPLUG_VOLTAGE_COMPARE_MASK ;
 int HOTPLUG_INT_EN_MASK ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 int hpd_mask_i915 ;
 int i915_hotplug_interrupt_update_locked (struct drm_i915_private*,int,int) ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_en;

 lockdep_assert_held(&dev_priv->irq_lock);



 hotplug_en = intel_hpd_enabled_irqs(dev_priv, hpd_mask_i915);




 if (IS_G4X(dev_priv))
  hotplug_en |= CRT_HOTPLUG_ACTIVATION_PERIOD_64;
 hotplug_en |= CRT_HOTPLUG_VOLTAGE_COMPARE_50;


 i915_hotplug_interrupt_update_locked(dev_priv,
          HOTPLUG_INT_EN_MASK |
          CRT_HOTPLUG_VOLTAGE_COMPARE_MASK |
          CRT_HOTPLUG_ACTIVATION_PERIOD_64,
          hotplug_en);
}
