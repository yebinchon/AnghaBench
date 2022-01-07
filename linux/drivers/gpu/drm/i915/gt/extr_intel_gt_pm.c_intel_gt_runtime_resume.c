
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int uc; } ;


 int intel_gt_init_swizzling (struct intel_gt*) ;
 int intel_uc_runtime_resume (int *) ;

int intel_gt_runtime_resume(struct intel_gt *gt)
{
 intel_gt_init_swizzling(gt);

 return intel_uc_runtime_resume(&gt->uc);
}
