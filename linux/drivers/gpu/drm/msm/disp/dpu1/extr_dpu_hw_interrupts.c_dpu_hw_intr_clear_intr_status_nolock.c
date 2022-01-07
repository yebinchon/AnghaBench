
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_hw_intr {int hw; } ;
struct TYPE_4__ {int clr_off; } ;
struct TYPE_3__ {int reg_idx; int irq_mask; } ;


 int DPU_REG_WRITE (int *,int ,int ) ;
 TYPE_2__* dpu_intr_set ;
 TYPE_1__* dpu_irq_map ;
 int wmb () ;

__attribute__((used)) static void dpu_hw_intr_clear_intr_status_nolock(struct dpu_hw_intr *intr,
  int irq_idx)
{
 int reg_idx;

 if (!intr)
  return;

 reg_idx = dpu_irq_map[irq_idx].reg_idx;
 DPU_REG_WRITE(&intr->hw, dpu_intr_set[reg_idx].clr_off,
   dpu_irq_map[irq_idx].irq_mask);


 wmb();
}
