
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int uc; } ;
struct TYPE_5__ {int dev; int struct_mutex; } ;
struct drm_i915_private {TYPE_2__ gt; TYPE_1__ drm; int uncore; } ;


 int FORCEWAKE_ALL ;
 int GEM_TRACE (char*) ;
 int dev_err (int ,char*) ;
 scalar_t__ i915_gem_init_hw (struct drm_i915_private*) ;
 int i915_gem_load_power_context (struct drm_i915_private*) ;
 int intel_gt_is_wedged (TYPE_2__*) ;
 scalar_t__ intel_gt_resume (TYPE_2__*) ;
 int intel_gt_set_wedged (TYPE_2__*) ;
 int intel_uc_resume (int *) ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void i915_gem_resume(struct drm_i915_private *i915)
{
 GEM_TRACE("\n");

 mutex_lock(&i915->drm.struct_mutex);
 intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);

 if (i915_gem_init_hw(i915))
  goto err_wedged;






 if (intel_gt_resume(&i915->gt))
  goto err_wedged;

 intel_uc_resume(&i915->gt.uc);


 if (!i915_gem_load_power_context(i915))
  goto err_wedged;

out_unlock:
 intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
 mutex_unlock(&i915->drm.struct_mutex);
 return;

err_wedged:
 if (!intel_gt_is_wedged(&i915->gt)) {
  dev_err(i915->drm.dev,
   "Failed to re-initialize GPU, declaring it wedged!\n");
  intel_gt_set_wedged(&i915->gt);
 }
 goto out_unlock;
}
