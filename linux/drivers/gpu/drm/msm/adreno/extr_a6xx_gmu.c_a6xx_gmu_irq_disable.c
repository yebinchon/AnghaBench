
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {int hfi_irq; int gmu_irq; } ;


 int REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK ;
 int REG_A6XX_GMU_GMU2HOST_INTR_MASK ;
 int disable_irq (int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int ) ;

__attribute__((used)) static void a6xx_gmu_irq_disable(struct a6xx_gmu *gmu)
{
 disable_irq(gmu->gmu_irq);
 disable_irq(gmu->hfi_irq);

 gmu_write(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK, ~0);
 gmu_write(gmu, REG_A6XX_GMU_GMU2HOST_INTR_MASK, ~0);
}
