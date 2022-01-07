
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int dummy; } ;


 int intel_gt_is_wedged (struct intel_gt*) ;
 int intel_gt_reset (struct intel_gt*,int ,int *) ;
 int intel_gt_set_wedged (struct intel_gt*) ;

bool igt_force_reset(struct intel_gt *gt)
{
 intel_gt_set_wedged(gt);
 intel_gt_reset(gt, 0, ((void*)0));

 return !intel_gt_is_wedged(gt);
}
