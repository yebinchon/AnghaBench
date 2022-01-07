
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* stats; } ;
struct drm_i915_private {int irq_lock; TYPE_2__ hotplug; } ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;
struct TYPE_3__ {int state; } ;


 int HPD_ENABLED ;
 int HPD_NONE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
{
 if (pin == HPD_NONE)
  return;

 spin_lock_irq(&dev_priv->irq_lock);
 dev_priv->hotplug.stats[pin].state = HPD_ENABLED;
 spin_unlock_irq(&dev_priv->irq_lock);
}
