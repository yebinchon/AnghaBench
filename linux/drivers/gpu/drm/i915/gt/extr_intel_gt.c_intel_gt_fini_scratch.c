
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int scratch; } ;


 int i915_vma_unpin_and_release (int *,int ) ;

void intel_gt_fini_scratch(struct intel_gt *gt)
{
 i915_vma_unpin_and_release(&gt->scratch, 0);
}
