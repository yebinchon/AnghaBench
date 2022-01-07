
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int struct_mutex; } ;
struct TYPE_4__ {int uc; int awake; } ;
struct TYPE_5__ {int userfault_wakeref; } ;
struct drm_i915_private {TYPE_3__ drm; TYPE_1__ gt; TYPE_2__ ggtt; } ;


 int GEM_BUG_ON (int ) ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int i915_gem_drain_workqueue (struct drm_i915_private*) ;
 int i915_gem_suspend_late (struct drm_i915_private*) ;
 int intel_disable_gt_powersave (struct drm_i915_private*) ;
 int intel_uc_fini (int *) ;
 int intel_uc_fini_hw (int *) ;
 int intel_wakeref_auto_fini (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
{
 GEM_BUG_ON(dev_priv->gt.awake);

 intel_wakeref_auto_fini(&dev_priv->ggtt.userfault_wakeref);

 i915_gem_suspend_late(dev_priv);
 intel_disable_gt_powersave(dev_priv);


 i915_gem_drain_workqueue(dev_priv);

 mutex_lock(&dev_priv->drm.struct_mutex);
 intel_uc_fini_hw(&dev_priv->gt.uc);
 intel_uc_fini(&dev_priv->gt.uc);
 mutex_unlock(&dev_priv->drm.struct_mutex);

 i915_gem_drain_freed_objects(dev_priv);
}
