
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dev; } ;
struct drm_i915_private {TYPE_3__ drm; int irq_lock; } ;
struct TYPE_4__ {int is_suspended; } ;
struct TYPE_5__ {TYPE_1__ power; } ;


 int intel_hpd_poll_init (struct drm_i915_private*) ;
 int intel_power_sequencer_reset (struct drm_i915_private*) ;
 int intel_synchronize_irq (struct drm_i915_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int valleyview_disable_display_irqs (struct drm_i915_private*) ;

__attribute__((used)) static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
{
 spin_lock_irq(&dev_priv->irq_lock);
 valleyview_disable_display_irqs(dev_priv);
 spin_unlock_irq(&dev_priv->irq_lock);


 intel_synchronize_irq(dev_priv);

 intel_power_sequencer_reset(dev_priv);


 if (!dev_priv->drm.dev->power.is_suspended)
  intel_hpd_poll_init(dev_priv);
}
