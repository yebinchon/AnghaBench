
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct msm_gpu {TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR ;
 int A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS ;
 int A6XX_RBBM_INT_0_MASK_CP_HW_ERROR ;
 int A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW ;
 int A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW ;
 int A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT ;
 int A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS ;
 int IRQ_HANDLED ;
 int REG_A6XX_RBBM_INT_0_STATUS ;
 int REG_A6XX_RBBM_INT_CLEAR_CMD ;
 int a6xx_cp_hw_err_irq (struct msm_gpu*) ;
 int a6xx_fault_detect_irq (struct msm_gpu*) ;
 int dev_err_ratelimited (int *,char*) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_retire (struct msm_gpu*) ;

__attribute__((used)) static irqreturn_t a6xx_irq(struct msm_gpu *gpu)
{
 u32 status = gpu_read(gpu, REG_A6XX_RBBM_INT_0_STATUS);

 gpu_write(gpu, REG_A6XX_RBBM_INT_CLEAR_CMD, status);

 if (status & A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT)
  a6xx_fault_detect_irq(gpu);

 if (status & A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR)
  dev_err_ratelimited(&gpu->pdev->dev, "CP | AHB bus error\n");

 if (status & A6XX_RBBM_INT_0_MASK_CP_HW_ERROR)
  a6xx_cp_hw_err_irq(gpu);

 if (status & A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW)
  dev_err_ratelimited(&gpu->pdev->dev, "RBBM | ATB ASYNC overflow\n");

 if (status & A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW)
  dev_err_ratelimited(&gpu->pdev->dev, "RBBM | ATB bus overflow\n");

 if (status & A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS)
  dev_err_ratelimited(&gpu->pdev->dev, "UCHE | Out of bounds access\n");

 if (status & A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS)
  msm_gpu_retire(gpu);

 return IRQ_HANDLED;
}
