
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reenable_work; int poll_init_work; int hotplug_work; int dig_port_work; scalar_t__ retry_bits; scalar_t__ event_bits; scalar_t__ short_port_mask; scalar_t__ long_port_mask; } ;
struct drm_i915_private {TYPE_1__ hotplug; int irq_lock; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
{
 spin_lock_irq(&dev_priv->irq_lock);

 dev_priv->hotplug.long_port_mask = 0;
 dev_priv->hotplug.short_port_mask = 0;
 dev_priv->hotplug.event_bits = 0;
 dev_priv->hotplug.retry_bits = 0;

 spin_unlock_irq(&dev_priv->irq_lock);

 cancel_work_sync(&dev_priv->hotplug.dig_port_work);
 cancel_delayed_work_sync(&dev_priv->hotplug.hotplug_work);
 cancel_work_sync(&dev_priv->hotplug.poll_init_work);
 cancel_delayed_work_sync(&dev_priv->hotplug.reenable_work);
}
