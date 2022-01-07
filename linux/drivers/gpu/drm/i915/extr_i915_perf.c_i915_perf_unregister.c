
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sysfs_metric; } ;
struct TYPE_4__ {int * metrics_kobj; TYPE_1__ test_config; } ;
struct drm_i915_private {TYPE_2__ perf; } ;


 int kobject_put (int *) ;
 int sysfs_remove_group (int *,int *) ;

void i915_perf_unregister(struct drm_i915_private *dev_priv)
{
 if (!dev_priv->perf.metrics_kobj)
  return;

 sysfs_remove_group(dev_priv->perf.metrics_kobj,
      &dev_priv->perf.test_config.sysfs_metric);

 kobject_put(dev_priv->perf.metrics_kobj);
 dev_priv->perf.metrics_kobj = ((void*)0);
}
