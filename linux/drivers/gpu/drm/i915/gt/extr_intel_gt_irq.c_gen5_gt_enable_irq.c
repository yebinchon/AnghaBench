
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int uncore; } ;


 int GTIMR ;
 int gen5_gt_update_irq (struct intel_gt*,int ,int ) ;
 int intel_uncore_posting_read_fw (int ,int ) ;

void gen5_gt_enable_irq(struct intel_gt *gt, u32 mask)
{
 gen5_gt_update_irq(gt, mask, mask);
 intel_uncore_posting_read_fw(gt->uncore, GTIMR);
}
