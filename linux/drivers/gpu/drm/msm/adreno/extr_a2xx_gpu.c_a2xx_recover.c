
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 scalar_t__ REG_A2XX_RBBM_SOFT_RESET ;
 scalar_t__ REG_AXXX_CP_SCRATCH_REG0 ;
 int a2xx_dump (struct msm_gpu*) ;
 int adreno_dump_info (struct msm_gpu*) ;
 int adreno_recover (struct msm_gpu*) ;
 int gpu_read (struct msm_gpu*,scalar_t__) ;
 int gpu_write (struct msm_gpu*,scalar_t__,int) ;
 scalar_t__ hang_debug ;
 int printk (char*,int,int ) ;

__attribute__((used)) static void a2xx_recover(struct msm_gpu *gpu)
{
 int i;

 adreno_dump_info(gpu);

 for (i = 0; i < 8; i++) {
  printk("CP_SCRATCH_REG%d: %u\n", i,
   gpu_read(gpu, REG_AXXX_CP_SCRATCH_REG0 + i));
 }


 if (hang_debug)
  a2xx_dump(gpu);

 gpu_write(gpu, REG_A2XX_RBBM_SOFT_RESET, 1);
 gpu_read(gpu, REG_A2XX_RBBM_SOFT_RESET);
 gpu_write(gpu, REG_A2XX_RBBM_SOFT_RESET, 0);
 adreno_recover(gpu);
}
