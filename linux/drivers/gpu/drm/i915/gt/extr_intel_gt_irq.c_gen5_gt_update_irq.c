
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int gt_imr; int uncore; int irq_lock; } ;


 int GEM_BUG_ON (int) ;
 int GTIMR ;
 int intel_uncore_write (int ,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void gen5_gt_update_irq(struct intel_gt *gt,
          u32 interrupt_mask,
          u32 enabled_irq_mask)
{
 lockdep_assert_held(&gt->irq_lock);

 GEM_BUG_ON(enabled_irq_mask & ~interrupt_mask);

 gt->gt_imr &= ~interrupt_mask;
 gt->gt_imr |= (~enabled_irq_mask & interrupt_mask);
 intel_uncore_write(gt->uncore, GTIMR, gt->gt_imr);
}
