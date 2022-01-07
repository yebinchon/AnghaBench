
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;


 unsigned int A4XX_RBBM_POWER_CNTL_IP_SP_TP_PWR_ON ;
 int REG_A4XX_RBBM_POWER_CNTL_IP ;
 int REG_A4XX_RBBM_POWER_STATUS ;
 scalar_t__ adreno_is_a430 (struct adreno_gpu*) ;
 unsigned int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_pm_resume (struct msm_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int udelay (int) ;

__attribute__((used)) static int a4xx_pm_resume(struct msm_gpu *gpu) {
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int ret;

 ret = msm_gpu_pm_resume(gpu);
 if (ret)
  return ret;

 if (adreno_is_a430(adreno_gpu)) {
  unsigned int reg;

  gpu_write(gpu, REG_A4XX_RBBM_POWER_CNTL_IP, 0x778000);
  do {
   udelay(5);
   reg = gpu_read(gpu, REG_A4XX_RBBM_POWER_STATUS);
  } while (!(reg & A4XX_RBBM_POWER_CNTL_IP_SP_TP_PWR_ON));
 }
 return 0;
}
