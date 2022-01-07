
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct msm_gpu {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int REG_A5XX_UCHE_TRAP_LOG_HI ;
 int REG_A5XX_UCHE_TRAP_LOG_LO ;
 int dev_err_ratelimited (int ,char*,int ) ;
 int gpu_read (struct msm_gpu*,int ) ;

__attribute__((used)) static void a5xx_uche_err_irq(struct msm_gpu *gpu)
{
 uint64_t addr = (uint64_t) gpu_read(gpu, REG_A5XX_UCHE_TRAP_LOG_HI);

 addr |= gpu_read(gpu, REG_A5XX_UCHE_TRAP_LOG_LO);

 dev_err_ratelimited(gpu->dev->dev, "UCHE | Out of bounds access | addr=0x%llX\n",
  addr);
}
