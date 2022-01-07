
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int wakeref; } ;


 int intel_wakeref_put (int *) ;

__attribute__((used)) static inline void intel_gt_pm_put(struct intel_gt *gt)
{
 intel_wakeref_put(&gt->wakeref);
}
