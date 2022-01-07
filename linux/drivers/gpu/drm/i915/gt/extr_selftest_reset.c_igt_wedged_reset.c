
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gt {TYPE_1__* i915; } ;
typedef int intel_wakeref_t ;
struct TYPE_2__ {int runtime_pm; } ;


 int ALL_ENGINES ;
 int EIO ;
 int GEM_BUG_ON (int) ;
 int igt_global_reset_lock (struct intel_gt*) ;
 int igt_global_reset_unlock (struct intel_gt*) ;
 scalar_t__ intel_gt_is_wedged (struct intel_gt*) ;
 int intel_gt_reset (struct intel_gt*,int ,int *) ;
 int intel_gt_set_wedged (struct intel_gt*) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;

__attribute__((used)) static int igt_wedged_reset(void *arg)
{
 struct intel_gt *gt = arg;
 intel_wakeref_t wakeref;



 igt_global_reset_lock(gt);
 wakeref = intel_runtime_pm_get(&gt->i915->runtime_pm);

 intel_gt_set_wedged(gt);

 GEM_BUG_ON(!intel_gt_is_wedged(gt));
 intel_gt_reset(gt, ALL_ENGINES, ((void*)0));

 intel_runtime_pm_put(&gt->i915->runtime_pm, wakeref);
 igt_global_reset_unlock(gt);

 return intel_gt_is_wedged(gt) ? -EIO : 0;
}
