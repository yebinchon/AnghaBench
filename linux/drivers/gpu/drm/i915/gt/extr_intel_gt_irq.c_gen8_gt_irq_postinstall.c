
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int pm_ier; int pm_imr; struct intel_uncore* uncore; } ;


 int GEN8_BCS_IRQ_SHIFT ;
 int GEN8_IRQ_INIT_NDX (struct intel_uncore*,int ,int,int,int) ;
 int GEN8_RCS_IRQ_SHIFT ;
 int GEN8_VCS0_IRQ_SHIFT ;
 int GEN8_VCS1_IRQ_SHIFT ;
 int GEN8_VECS_IRQ_SHIFT ;
 int GT ;
 int GT_CONTEXT_SWITCH_INTERRUPT ;
 int GT_RENDER_USER_INTERRUPT ;

void gen8_gt_irq_postinstall(struct intel_gt *gt)
{
 struct intel_uncore *uncore = gt->uncore;


 u32 gt_interrupts[] = {
  (GT_RENDER_USER_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
   GT_CONTEXT_SWITCH_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
   GT_RENDER_USER_INTERRUPT << GEN8_BCS_IRQ_SHIFT |
   GT_CONTEXT_SWITCH_INTERRUPT << GEN8_BCS_IRQ_SHIFT),

  (GT_RENDER_USER_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
   GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
   GT_RENDER_USER_INTERRUPT << GEN8_VCS1_IRQ_SHIFT |
   GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS1_IRQ_SHIFT),

  0,

  (GT_RENDER_USER_INTERRUPT << GEN8_VECS_IRQ_SHIFT |
   GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VECS_IRQ_SHIFT)
 };

 gt->pm_ier = 0x0;
 gt->pm_imr = ~gt->pm_ier;
 GEN8_IRQ_INIT_NDX(uncore, GT, 0, ~gt_interrupts[0], gt_interrupts[0]);
 GEN8_IRQ_INIT_NDX(uncore, GT, 1, ~gt_interrupts[1], gt_interrupts[1]);




 GEN8_IRQ_INIT_NDX(uncore, GT, 2, gt->pm_imr, gt->pm_ier);
 GEN8_IRQ_INIT_NDX(uncore, GT, 3, ~gt_interrupts[3], gt_interrupts[3]);
}
