
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_gpu {int name; } ;
typedef int irqreturn_t ;


 int DBG (char*,int ,int ) ;
 int IRQ_HANDLED ;
 int REG_A3XX_RBBM_INT_0_STATUS ;
 int REG_A3XX_RBBM_INT_CLEAR_CMD ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;
 int msm_gpu_retire (struct msm_gpu*) ;

__attribute__((used)) static irqreturn_t a3xx_irq(struct msm_gpu *gpu)
{
 uint32_t status;

 status = gpu_read(gpu, REG_A3XX_RBBM_INT_0_STATUS);
 DBG("%s: %08x", gpu->name, status);



 gpu_write(gpu, REG_A3XX_RBBM_INT_CLEAR_CMD, status);

 msm_gpu_retire(gpu);

 return IRQ_HANDLED;
}
