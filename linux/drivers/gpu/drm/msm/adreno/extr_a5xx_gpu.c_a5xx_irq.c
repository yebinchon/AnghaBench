
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_gpu {int dummy; } ;
typedef int irqreturn_t ;


 int A5XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS ;
 int A5XX_RBBM_INT_0_MASK_CP_HW_ERROR ;
 int A5XX_RBBM_INT_0_MASK_CP_SW ;
 int A5XX_RBBM_INT_0_MASK_GPMU_VOLTAGE_DROOP ;
 int A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT ;
 int A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR ;
 int A5XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS ;
 int IRQ_HANDLED ;
 int RBBM_ERROR_MASK ;
 int REG_A5XX_RBBM_INT_0_STATUS ;
 int REG_A5XX_RBBM_INT_CLEAR_CMD ;
 int a5xx_cp_err_irq (struct msm_gpu*) ;
 int a5xx_fault_detect_irq (struct msm_gpu*) ;
 int a5xx_gpmu_err_irq (struct msm_gpu*) ;
 int a5xx_preempt_irq (struct msm_gpu*) ;
 int a5xx_preempt_trigger (struct msm_gpu*) ;
 int a5xx_rbbm_err_irq (struct msm_gpu*,int) ;
 int a5xx_uche_err_irq (struct msm_gpu*) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_retire (struct msm_gpu*) ;

__attribute__((used)) static irqreturn_t a5xx_irq(struct msm_gpu *gpu)
{
 u32 status = gpu_read(gpu, REG_A5XX_RBBM_INT_0_STATUS);





 gpu_write(gpu, REG_A5XX_RBBM_INT_CLEAR_CMD,
  status & ~A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR);


 if (status & RBBM_ERROR_MASK)
  a5xx_rbbm_err_irq(gpu, status);

 if (status & A5XX_RBBM_INT_0_MASK_CP_HW_ERROR)
  a5xx_cp_err_irq(gpu);

 if (status & A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT)
  a5xx_fault_detect_irq(gpu);

 if (status & A5XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS)
  a5xx_uche_err_irq(gpu);

 if (status & A5XX_RBBM_INT_0_MASK_GPMU_VOLTAGE_DROOP)
  a5xx_gpmu_err_irq(gpu);

 if (status & A5XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS) {
  a5xx_preempt_trigger(gpu);
  msm_gpu_retire(gpu);
 }

 if (status & A5XX_RBBM_INT_0_MASK_CP_SW)
  a5xx_preempt_irq(gpu);

 return IRQ_HANDLED;
}
