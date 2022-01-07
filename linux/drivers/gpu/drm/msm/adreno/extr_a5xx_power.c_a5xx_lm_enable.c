
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;


 int REG_A5XX_GDPM_INT_EN ;
 int REG_A5XX_GDPM_INT_MASK ;
 int REG_A5XX_GPMU_CLOCK_THROTTLE_CTRL ;
 int REG_A5XX_GPMU_GPMU_VOLTAGE_INTR_EN_MASK ;
 int REG_A5XX_GPMU_TEMP_THRESHOLD_INTR_EN_MASK ;
 int REG_A5XX_GPMU_THROTTLE_UNMASK_FORCE_CTRL ;
 int adreno_is_a530 (struct adreno_gpu*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a5xx_lm_enable(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);


 if (!adreno_is_a530(adreno_gpu))
  return;

 gpu_write(gpu, REG_A5XX_GDPM_INT_MASK, 0x0);
 gpu_write(gpu, REG_A5XX_GDPM_INT_EN, 0x0A);
 gpu_write(gpu, REG_A5XX_GPMU_GPMU_VOLTAGE_INTR_EN_MASK, 0x01);
 gpu_write(gpu, REG_A5XX_GPMU_TEMP_THRESHOLD_INTR_EN_MASK, 0x50000);
 gpu_write(gpu, REG_A5XX_GPMU_THROTTLE_UNMASK_FORCE_CTRL, 0x30000);

 gpu_write(gpu, REG_A5XX_GPMU_CLOCK_THROTTLE_CTRL, 0x011);
}
