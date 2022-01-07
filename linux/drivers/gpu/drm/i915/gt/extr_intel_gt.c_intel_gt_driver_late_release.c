
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int uc; } ;


 int intel_gt_fini_reset (struct intel_gt*) ;
 int intel_uc_driver_late_release (int *) ;

void intel_gt_driver_late_release(struct intel_gt *gt)
{
 intel_uc_driver_late_release(&gt->uc);
 intel_gt_fini_reset(gt);
}
