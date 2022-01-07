
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_gt {TYPE_2__* i915; } ;
struct TYPE_7__ {scalar_t__ reset; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ drm; } ;


 int ETIME ;
 int GEM_TRACE_DUMP () ;
 int I915_GEM_IDLE_TIMEOUT ;
 int I915_WAIT_FOR_IDLE_BOOST ;
 int I915_WAIT_LOCKED ;
 int dev_err (int ,char*) ;
 int i915_gem_wait_for_idle (TYPE_2__*,int,int ) ;
 TYPE_3__ i915_modparams ;
 scalar_t__ i915_retire_requests (TYPE_2__*) ;
 int intel_gt_is_wedged (struct intel_gt*) ;
 scalar_t__ intel_gt_pm_wait_for_idle (struct intel_gt*) ;
 int intel_gt_set_wedged (struct intel_gt*) ;

__attribute__((used)) static bool switch_to_kernel_context_sync(struct intel_gt *gt)
{
 bool result = !intel_gt_is_wedged(gt);

 do {
  if (i915_gem_wait_for_idle(gt->i915,
        I915_WAIT_LOCKED |
        I915_WAIT_FOR_IDLE_BOOST,
        I915_GEM_IDLE_TIMEOUT) == -ETIME) {

   if (i915_modparams.reset) {
    dev_err(gt->i915->drm.dev,
     "Failed to idle engines, declaring wedged!\n");
    GEM_TRACE_DUMP();
   }





   intel_gt_set_wedged(gt);
   result = 0;
  }
 } while (i915_retire_requests(gt->i915) && result);

 if (intel_gt_pm_wait_for_idle(gt))
  result = 0;

 return result;
}
