
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int wakeref; } ;


 int intel_wakeref_wait_for_idle (int *) ;

__attribute__((used)) static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
{
 return intel_wakeref_wait_for_idle(&gt->wakeref);
}
