
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int dummy; } ;


 int intel_gt_terminally_wedged (struct intel_gt*) ;

int __intel_gt_live_setup(void *data)
{
 struct intel_gt *gt = data;

 return intel_gt_terminally_wedged(gt);
}
