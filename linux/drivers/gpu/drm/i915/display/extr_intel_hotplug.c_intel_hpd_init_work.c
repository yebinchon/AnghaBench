
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reenable_work; int poll_init_work; int dig_port_work; int hotplug_work; } ;
struct drm_i915_private {TYPE_1__ hotplug; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int i915_digport_work_func ;
 int i915_hotplug_work_func ;
 int i915_hpd_poll_init_work ;
 int intel_hpd_irq_storm_reenable_work ;

void intel_hpd_init_work(struct drm_i915_private *dev_priv)
{
 INIT_DELAYED_WORK(&dev_priv->hotplug.hotplug_work,
     i915_hotplug_work_func);
 INIT_WORK(&dev_priv->hotplug.dig_port_work, i915_digport_work_func);
 INIT_WORK(&dev_priv->hotplug.poll_init_work, i915_hpd_poll_init_work);
 INIT_DELAYED_WORK(&dev_priv->hotplug.reenable_work,
     intel_hpd_irq_storm_reenable_work);
}
