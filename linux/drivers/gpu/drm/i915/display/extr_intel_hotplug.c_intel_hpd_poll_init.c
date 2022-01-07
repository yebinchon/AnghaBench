
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int poll_init_work; int poll_enabled; } ;
struct drm_i915_private {TYPE_1__ hotplug; } ;


 int WRITE_ONCE (int ,int) ;
 int schedule_work (int *) ;

void intel_hpd_poll_init(struct drm_i915_private *dev_priv)
{
 WRITE_ONCE(dev_priv->hotplug.poll_enabled, 1);







 schedule_work(&dev_priv->hotplug.poll_init_work);
}
