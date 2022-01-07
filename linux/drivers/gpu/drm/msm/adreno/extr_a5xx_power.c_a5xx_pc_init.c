
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int REG_A5XX_GPMU_PWR_COL_BINNING_CTRL ;
 int REG_A5XX_GPMU_PWR_COL_INTER_FRAME_CTRL ;
 int REG_A5XX_GPMU_PWR_COL_INTER_FRAME_HYST ;
 int REG_A5XX_GPMU_PWR_COL_STAGGER_DELAY ;
 int gpu_write (struct msm_gpu*,int ,int) ;

__attribute__((used)) static void a5xx_pc_init(struct msm_gpu *gpu)
{
 gpu_write(gpu, REG_A5XX_GPMU_PWR_COL_INTER_FRAME_CTRL, 0x7F);
 gpu_write(gpu, REG_A5XX_GPMU_PWR_COL_BINNING_CTRL, 0);
 gpu_write(gpu, REG_A5XX_GPMU_PWR_COL_INTER_FRAME_HYST, 0xA0080);
 gpu_write(gpu, REG_A5XX_GPMU_PWR_COL_STAGGER_DELAY, 0x600040);
}
