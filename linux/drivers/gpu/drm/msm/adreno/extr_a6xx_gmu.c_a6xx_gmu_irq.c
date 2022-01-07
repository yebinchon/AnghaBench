
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int dev; } ;
typedef int irqreturn_t ;


 int A6XX_GMU_AO_HOST_INTERRUPT_STATUS_FENCE_ERR ;
 int A6XX_GMU_AO_HOST_INTERRUPT_STATUS_HOST_AHB_BUS_ERROR ;
 int A6XX_GMU_AO_HOST_INTERRUPT_STATUS_WDOG_BITE ;
 int IRQ_HANDLED ;
 int REG_A6XX_GMU_AHB_FENCE_STATUS ;
 int REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR ;
 int REG_A6XX_GMU_AO_HOST_INTERRUPT_STATUS ;
 int a6xx_gmu_fault (struct a6xx_gmu*) ;
 int dev_err_ratelimited (int ,char*,...) ;
 int gmu_read (struct a6xx_gmu*,int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

__attribute__((used)) static irqreturn_t a6xx_gmu_irq(int irq, void *data)
{
 struct a6xx_gmu *gmu = data;
 u32 status;

 status = gmu_read(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_STATUS);
 gmu_write(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR, status);

 if (status & A6XX_GMU_AO_HOST_INTERRUPT_STATUS_WDOG_BITE) {
  dev_err_ratelimited(gmu->dev, "GMU watchdog expired\n");

  a6xx_gmu_fault(gmu);
 }

 if (status & A6XX_GMU_AO_HOST_INTERRUPT_STATUS_HOST_AHB_BUS_ERROR)
  dev_err_ratelimited(gmu->dev, "GMU AHB bus error\n");

 if (status & A6XX_GMU_AO_HOST_INTERRUPT_STATUS_FENCE_ERR)
  dev_err_ratelimited(gmu->dev, "GMU fence error: 0x%x\n",
   gmu_read(gmu, REG_A6XX_GMU_AHB_FENCE_STATUS));

 return IRQ_HANDLED;
}
