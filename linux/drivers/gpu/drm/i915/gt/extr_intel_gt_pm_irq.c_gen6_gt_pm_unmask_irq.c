
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int dummy; } ;


 int gen6_gt_pm_update_irq (struct intel_gt*,int ,int ) ;

void gen6_gt_pm_unmask_irq(struct intel_gt *gt, u32 mask)
{
 gen6_gt_pm_update_irq(gt, mask, mask);
}
