
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int uc; } ;


 int intel_uc_runtime_suspend (int *) ;

void intel_gt_runtime_suspend(struct intel_gt *gt)
{
 intel_uc_runtime_suspend(&gt->uc);
}
