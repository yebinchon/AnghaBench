
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;


 int REG_A4XX_RBBM_POWER_CNTL_IP ;
 scalar_t__ adreno_is_a430 (struct adreno_gpu*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_pm_suspend (struct msm_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a4xx_pm_suspend(struct msm_gpu *gpu) {
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int ret;

 ret = msm_gpu_pm_suspend(gpu);
 if (ret)
  return ret;

 if (adreno_is_a430(adreno_gpu)) {

  gpu_write(gpu, REG_A4XX_RBBM_POWER_CNTL_IP, 0x778001);
 }
 return 0;
}
