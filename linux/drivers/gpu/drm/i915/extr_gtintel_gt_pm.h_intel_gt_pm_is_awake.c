
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int wakeref; } ;


 int intel_wakeref_is_active (int *) ;

__attribute__((used)) static inline bool intel_gt_pm_is_awake(const struct intel_gt *gt)
{
 return intel_wakeref_is_active(&gt->wakeref);
}
