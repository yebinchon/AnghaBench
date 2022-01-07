
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dp_wq; } ;
struct drm_i915_private {int wq; TYPE_1__ hotplug; } ;


 int destroy_workqueue (int ) ;

__attribute__((used)) static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
{
 destroy_workqueue(dev_priv->hotplug.dp_wq);
 destroy_workqueue(dev_priv->wq);
}
