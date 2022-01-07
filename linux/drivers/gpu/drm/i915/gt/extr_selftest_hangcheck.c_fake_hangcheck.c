
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_gt {TYPE_1__* i915; } ;
typedef int intel_engine_mask_t ;
struct TYPE_2__ {int gpu_error; } ;


 int i915_reset_count (int *) ;
 int intel_gt_reset (struct intel_gt*,int ,int *) ;

__attribute__((used)) static u32 fake_hangcheck(struct intel_gt *gt, intel_engine_mask_t mask)
{
 u32 count = i915_reset_count(&gt->i915->gpu_error);

 intel_gt_reset(gt, mask, ((void*)0));

 return count;
}
