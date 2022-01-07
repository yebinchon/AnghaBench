
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_gpu {int name; } ;
typedef int irqreturn_t ;


 int A4XX_INT0_CP_REG_PROTECT_FAULT ;
 int DBG (char*,int ,int) ;
 int IRQ_HANDLED ;
 int REG_A4XX_CP_PROTECT_STATUS ;
 int REG_A4XX_RBBM_INT_0_STATUS ;
 int REG_A4XX_RBBM_INT_CLEAR_CMD ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_retire (struct msm_gpu*) ;
 int printk (char*,char*,int) ;

__attribute__((used)) static irqreturn_t a4xx_irq(struct msm_gpu *gpu)
{
 uint32_t status;

 status = gpu_read(gpu, REG_A4XX_RBBM_INT_0_STATUS);
 DBG("%s: Int status %08x", gpu->name, status);

 if (status & A4XX_INT0_CP_REG_PROTECT_FAULT) {
  uint32_t reg = gpu_read(gpu, REG_A4XX_CP_PROTECT_STATUS);
  printk("CP | Protected mode error| %s | addr=%x\n",
   reg & (1 << 24) ? "WRITE" : "READ",
   (reg & 0xFFFFF) >> 2);
 }

 gpu_write(gpu, REG_A4XX_RBBM_INT_CLEAR_CMD, status);

 msm_gpu_retire(gpu);

 return IRQ_HANDLED;
}
