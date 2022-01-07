
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_gt {int i915; struct intel_uncore* uncore; } ;


 int GEN3_IRQ_RESET (struct intel_uncore*,int ) ;
 int GEN6_PM ;
 int GT ;
 int INTEL_GEN (int ) ;

void gen5_gt_irq_reset(struct intel_gt *gt)
{
 struct intel_uncore *uncore = gt->uncore;

 GEN3_IRQ_RESET(uncore, GT);
 if (INTEL_GEN(gt->i915) >= 6)
  GEN3_IRQ_RESET(uncore, GEN6_PM);
}
