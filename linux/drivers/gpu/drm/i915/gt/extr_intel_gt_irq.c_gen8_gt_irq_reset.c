
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;


 int GEN8_IRQ_RESET_NDX (struct intel_uncore*,int ,int) ;
 int GT ;

void gen8_gt_irq_reset(struct intel_gt *gt)
{
 struct intel_uncore *uncore = gt->uncore;

 GEN8_IRQ_RESET_NDX(uncore, GT, 0);
 GEN8_IRQ_RESET_NDX(uncore, GT, 1);
 GEN8_IRQ_RESET_NDX(uncore, GT, 2);
 GEN8_IRQ_RESET_NDX(uncore, GT, 3);
}
