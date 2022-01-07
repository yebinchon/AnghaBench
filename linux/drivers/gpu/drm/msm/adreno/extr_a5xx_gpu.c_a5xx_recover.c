
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int REG_A5XX_CP_SCRATCH_REG (int) ;
 int REG_A5XX_RBBM_SW_RESET_CMD ;
 int a5xx_dump (struct msm_gpu*) ;
 int adreno_dump_info (struct msm_gpu*) ;
 int adreno_recover (struct msm_gpu*) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 scalar_t__ hang_debug ;
 int printk (char*,int,int ) ;

__attribute__((used)) static void a5xx_recover(struct msm_gpu *gpu)
{
 int i;

 adreno_dump_info(gpu);

 for (i = 0; i < 8; i++) {
  printk("CP_SCRATCH_REG%d: %u\n", i,
   gpu_read(gpu, REG_A5XX_CP_SCRATCH_REG(i)));
 }

 if (hang_debug)
  a5xx_dump(gpu);

 gpu_write(gpu, REG_A5XX_RBBM_SW_RESET_CMD, 1);
 gpu_read(gpu, REG_A5XX_RBBM_SW_RESET_CMD);
 gpu_write(gpu, REG_A5XX_RBBM_SW_RESET_CMD, 0);
 adreno_recover(gpu);
}
