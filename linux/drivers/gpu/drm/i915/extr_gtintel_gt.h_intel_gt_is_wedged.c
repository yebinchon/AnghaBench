
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {int reset; } ;


 int __intel_reset_failed (int *) ;

__attribute__((used)) static inline bool intel_gt_is_wedged(struct intel_gt *gt)
{
 return __intel_reset_failed(&gt->reset);
}
