
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_gpu {TYPE_1__* dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int A2XX_MASTER_INT_SIGNAL_CP_INT_STAT ;
 int A2XX_MASTER_INT_SIGNAL_MH_INT_STAT ;
 int A2XX_MASTER_INT_SIGNAL_RBBM_INT_STAT ;
 int AXXX_CP_INT_CNTL_RB_INT_MASK ;
 int IRQ_HANDLED ;
 int REG_A2XX_MASTER_INT_SIGNAL ;
 int REG_A2XX_MH_INTERRUPT_CLEAR ;
 int REG_A2XX_MH_INTERRUPT_STATUS ;
 int REG_A2XX_MH_MMU_PAGE_FAULT ;
 int REG_A2XX_RBBM_INT_ACK ;
 int REG_A2XX_RBBM_INT_STATUS ;
 int REG_AXXX_CP_INT_ACK ;
 int REG_AXXX_CP_INT_STATUS ;
 int dev_warn (int ,char*,int) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_retire (struct msm_gpu*) ;

__attribute__((used)) static irqreturn_t a2xx_irq(struct msm_gpu *gpu)
{
 uint32_t mstatus, status;

 mstatus = gpu_read(gpu, REG_A2XX_MASTER_INT_SIGNAL);

 if (mstatus & A2XX_MASTER_INT_SIGNAL_MH_INT_STAT) {
  status = gpu_read(gpu, REG_A2XX_MH_INTERRUPT_STATUS);

  dev_warn(gpu->dev->dev, "MH_INT: %08X\n", status);
  dev_warn(gpu->dev->dev, "MMU_PAGE_FAULT: %08X\n",
   gpu_read(gpu, REG_A2XX_MH_MMU_PAGE_FAULT));

  gpu_write(gpu, REG_A2XX_MH_INTERRUPT_CLEAR, status);
 }

 if (mstatus & A2XX_MASTER_INT_SIGNAL_CP_INT_STAT) {
  status = gpu_read(gpu, REG_AXXX_CP_INT_STATUS);


  if (status & ~AXXX_CP_INT_CNTL_RB_INT_MASK)
   dev_warn(gpu->dev->dev, "CP_INT: %08X\n", status);

  gpu_write(gpu, REG_AXXX_CP_INT_ACK, status);
 }

 if (mstatus & A2XX_MASTER_INT_SIGNAL_RBBM_INT_STAT) {
  status = gpu_read(gpu, REG_A2XX_RBBM_INT_STATUS);

  dev_warn(gpu->dev->dev, "RBBM_INT: %08X\n", status);

  gpu_write(gpu, REG_A2XX_RBBM_INT_ACK, status);
 }

 msm_gpu_retire(gpu);

 return IRQ_HANDLED;
}
