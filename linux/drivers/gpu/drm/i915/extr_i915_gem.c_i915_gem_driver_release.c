
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int list; } ;
struct TYPE_4__ {int uc; } ;
struct TYPE_6__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ contexts; TYPE_1__ gt; int gt_wa_list; TYPE_3__ drm; } ;


 int WARN_ON (int) ;
 int i915_gem_cleanup_userptr (struct drm_i915_private*) ;
 int i915_gem_contexts_fini (struct drm_i915_private*) ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int i915_gem_fini_scratch (struct drm_i915_private*) ;
 int intel_cleanup_gt_powersave (struct drm_i915_private*) ;
 int intel_engines_cleanup (struct drm_i915_private*) ;
 int intel_timelines_fini (struct drm_i915_private*) ;
 int intel_uc_cleanup_firmwares (int *) ;
 int intel_wa_list_free (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void i915_gem_driver_release(struct drm_i915_private *dev_priv)
{
 mutex_lock(&dev_priv->drm.struct_mutex);
 intel_engines_cleanup(dev_priv);
 i915_gem_contexts_fini(dev_priv);
 i915_gem_fini_scratch(dev_priv);
 mutex_unlock(&dev_priv->drm.struct_mutex);

 intel_wa_list_free(&dev_priv->gt_wa_list);

 intel_cleanup_gt_powersave(dev_priv);

 intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
 i915_gem_cleanup_userptr(dev_priv);
 intel_timelines_fini(dev_priv);

 i915_gem_drain_freed_objects(dev_priv);

 WARN_ON(!list_empty(&dev_priv->contexts.list));
}
