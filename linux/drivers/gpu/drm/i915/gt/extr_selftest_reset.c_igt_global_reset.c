
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {TYPE_1__* i915; } ;
typedef int intel_wakeref_t ;
struct TYPE_2__ {int runtime_pm; int gpu_error; } ;


 int ALL_ENGINES ;
 int EINVAL ;
 int EIO ;
 unsigned int i915_reset_count (int *) ;
 int igt_global_reset_lock (struct intel_gt*) ;
 int igt_global_reset_unlock (struct intel_gt*) ;
 scalar_t__ intel_gt_is_wedged (struct intel_gt*) ;
 int intel_gt_reset (struct intel_gt*,int ,int *) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int igt_global_reset(void *arg)
{
 struct intel_gt *gt = arg;
 unsigned int reset_count;
 intel_wakeref_t wakeref;
 int err = 0;



 igt_global_reset_lock(gt);
 wakeref = intel_runtime_pm_get(&gt->i915->runtime_pm);

 reset_count = i915_reset_count(&gt->i915->gpu_error);

 intel_gt_reset(gt, ALL_ENGINES, ((void*)0));

 if (i915_reset_count(&gt->i915->gpu_error) == reset_count) {
  pr_err("No GPU reset recorded!\n");
  err = -EINVAL;
 }

 intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
 igt_global_reset_unlock(gt);

 if (intel_gt_is_wedged(gt))
  err = -EIO;

 return err;
}
