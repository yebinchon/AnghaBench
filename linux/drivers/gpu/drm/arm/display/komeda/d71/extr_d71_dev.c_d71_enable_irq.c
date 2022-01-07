
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct komeda_dev {struct d71_dev* chip_data; } ;
struct d71_pipeline {int dou_addr; int lpu_addr; int cu_addr; } ;
struct d71_dev {size_t num_pipelines; struct d71_pipeline** pipes; int gcu_addr; } ;


 int BLK_IRQ_MASK ;
 int ENABLED_CU_IRQS ;
 int ENABLED_DOU_IRQS ;
 int ENABLED_GCU_IRQS ;
 int ENABLED_LPU_IRQS ;
 int malidp_write32_mask (int ,int ,int ,int ) ;

__attribute__((used)) static int d71_enable_irq(struct komeda_dev *mdev)
{
 struct d71_dev *d71 = mdev->chip_data;
 struct d71_pipeline *pipe;
 u32 i;

 malidp_write32_mask(d71->gcu_addr, BLK_IRQ_MASK,
       ENABLED_GCU_IRQS, ENABLED_GCU_IRQS);
 for (i = 0; i < d71->num_pipelines; i++) {
  pipe = d71->pipes[i];
  malidp_write32_mask(pipe->cu_addr, BLK_IRQ_MASK,
        ENABLED_CU_IRQS, ENABLED_CU_IRQS);
  malidp_write32_mask(pipe->lpu_addr, BLK_IRQ_MASK,
        ENABLED_LPU_IRQS, ENABLED_LPU_IRQS);
  malidp_write32_mask(pipe->dou_addr, BLK_IRQ_MASK,
        ENABLED_DOU_IRQS, ENABLED_DOU_IRQS);
 }
 return 0;
}
