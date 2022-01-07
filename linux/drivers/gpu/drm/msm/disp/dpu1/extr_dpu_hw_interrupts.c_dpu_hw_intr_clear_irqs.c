
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_hw_intr {int hw; } ;
struct TYPE_3__ {int clr_off; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DPU_REG_WRITE (int *,int ,int) ;
 int EINVAL ;
 TYPE_1__* dpu_intr_set ;
 int wmb () ;

__attribute__((used)) static int dpu_hw_intr_clear_irqs(struct dpu_hw_intr *intr)
{
 int i;

 if (!intr)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(dpu_intr_set); i++)
  DPU_REG_WRITE(&intr->hw, dpu_intr_set[i].clr_off, 0xffffffff);


 wmb();

 return 0;
}
