
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* stats; } ;
struct drm_i915_private {int irq_lock; TYPE_2__ hotplug; } ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ HPD_DISABLED ;
 scalar_t__ HPD_ENABLED ;
 int HPD_NONE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
{
 bool ret = 0;

 if (pin == HPD_NONE)
  return 0;

 spin_lock_irq(&dev_priv->irq_lock);
 if (dev_priv->hotplug.stats[pin].state == HPD_ENABLED) {
  dev_priv->hotplug.stats[pin].state = HPD_DISABLED;
  ret = 1;
 }
 spin_unlock_irq(&dev_priv->irq_lock);

 return ret;
}
