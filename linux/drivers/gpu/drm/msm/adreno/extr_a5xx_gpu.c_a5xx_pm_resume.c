
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int name; } ;


 int DRM_ERROR (char*,int ,...) ;
 int REG_A5XX_GPMU_RBCCU_POWER_CNTL ;
 int REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS ;
 int REG_A5XX_GPMU_SP_POWER_CNTL ;
 int REG_A5XX_GPMU_SP_PWR_CLK_STATUS ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msm_gpu_pm_resume (struct msm_gpu*) ;
 int spin_usecs (struct msm_gpu*,int,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int a5xx_pm_resume(struct msm_gpu *gpu)
{
 int ret;


 ret = msm_gpu_pm_resume(gpu);
 if (ret)
  return ret;


 gpu_write(gpu, REG_A5XX_GPMU_RBCCU_POWER_CNTL, 0x778000);


 udelay(3);

 ret = spin_usecs(gpu, 20, REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS,
  (1 << 20), (1 << 20));
 if (ret) {
  DRM_ERROR("%s: timeout waiting for RBCCU GDSC enable: %X\n",
   gpu->name,
   gpu_read(gpu, REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS));
  return ret;
 }


 gpu_write(gpu, REG_A5XX_GPMU_SP_POWER_CNTL, 0x778000);
 ret = spin_usecs(gpu, 20, REG_A5XX_GPMU_SP_PWR_CLK_STATUS,
  (1 << 20), (1 << 20));
 if (ret)
  DRM_ERROR("%s: timeout waiting for SP GDSC enable\n",
   gpu->name);

 return ret;
}
