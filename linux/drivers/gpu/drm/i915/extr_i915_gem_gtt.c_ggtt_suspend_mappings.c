
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total; int (* clear_range ) (TYPE_1__*,int ,int ) ;int gt; struct drm_i915_private* i915; } ;
struct i915_ggtt {int (* invalidate ) (struct i915_ggtt*) ;TYPE_1__ vm; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int intel_gt_check_and_clear_faults (int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;
 int stub2 (struct i915_ggtt*) ;

__attribute__((used)) static void ggtt_suspend_mappings(struct i915_ggtt *ggtt)
{
 struct drm_i915_private *i915 = ggtt->vm.i915;




 if (INTEL_GEN(i915) < 6)
  return;

 intel_gt_check_and_clear_faults(ggtt->vm.gt);

 ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);

 ggtt->invalidate(ggtt);
}
