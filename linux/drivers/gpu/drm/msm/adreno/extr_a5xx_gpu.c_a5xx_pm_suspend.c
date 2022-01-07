
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int REG_A5XX_RBBM_BLOCK_SW_RESET_CMD ;
 int REG_A5XX_VBIF_XIN_HALT_CTRL0 ;
 int REG_A5XX_VBIF_XIN_HALT_CTRL1 ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_pm_suspend (struct msm_gpu*) ;
 int spin_until (int) ;

__attribute__((used)) static int a5xx_pm_suspend(struct msm_gpu *gpu)
{

 gpu_write(gpu, REG_A5XX_VBIF_XIN_HALT_CTRL0, 0xF);
 spin_until((gpu_read(gpu, REG_A5XX_VBIF_XIN_HALT_CTRL1) & 0xF) == 0xF);

 gpu_write(gpu, REG_A5XX_VBIF_XIN_HALT_CTRL0, 0);





 gpu_write(gpu, REG_A5XX_RBBM_BLOCK_SW_RESET_CMD, 0x003C0000);
 gpu_write(gpu, REG_A5XX_RBBM_BLOCK_SW_RESET_CMD, 0x00000000);

 return msm_gpu_pm_suspend(gpu);
}
