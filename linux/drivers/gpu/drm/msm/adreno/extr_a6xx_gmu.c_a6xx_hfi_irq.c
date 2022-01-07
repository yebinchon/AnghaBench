
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int dev; } ;
typedef int irqreturn_t ;


 int A6XX_GMU_GMU2HOST_INTR_INFO_CM3_FAULT ;
 int IRQ_HANDLED ;
 int REG_A6XX_GMU_GMU2HOST_INTR_CLR ;
 int REG_A6XX_GMU_GMU2HOST_INTR_INFO ;
 int a6xx_gmu_fault (struct a6xx_gmu*) ;
 int dev_err_ratelimited (int ,char*) ;
 int gmu_read (struct a6xx_gmu*,int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

__attribute__((used)) static irqreturn_t a6xx_hfi_irq(int irq, void *data)
{
 struct a6xx_gmu *gmu = data;
 u32 status;

 status = gmu_read(gmu, REG_A6XX_GMU_GMU2HOST_INTR_INFO);
 gmu_write(gmu, REG_A6XX_GMU_GMU2HOST_INTR_CLR, status);

 if (status & A6XX_GMU_GMU2HOST_INTR_INFO_CM3_FAULT) {
  dev_err_ratelimited(gmu->dev, "GMU firmware fault\n");

  a6xx_gmu_fault(gmu);
 }

 return IRQ_HANDLED;
}
