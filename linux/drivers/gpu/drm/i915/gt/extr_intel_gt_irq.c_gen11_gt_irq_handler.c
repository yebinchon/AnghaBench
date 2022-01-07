
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int irq_lock; } ;


 int const GEN11_GT_DW_IRQ (unsigned int) ;
 int gen11_gt_bank_handler (struct intel_gt*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gen11_gt_irq_handler(struct intel_gt *gt, const u32 master_ctl)
{
 unsigned int bank;

 spin_lock(&gt->irq_lock);

 for (bank = 0; bank < 2; bank++) {
  if (master_ctl & GEN11_GT_DW_IRQ(bank))
   gen11_gt_bank_handler(gt, bank);
 }

 spin_unlock(&gt->irq_lock);
}
