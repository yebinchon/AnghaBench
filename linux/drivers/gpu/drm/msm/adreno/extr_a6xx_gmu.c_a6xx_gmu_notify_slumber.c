
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a6xx_gmu {scalar_t__ idle_level; int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int ETIMEDOUT ;
 scalar_t__ GMU_IDLE_STATE_SPTP ;
 int GMU_OOB_BOOT_SLUMBER ;
 int REG_A6XX_GMU_AO_AHB_FENCE_CTRL ;
 int REG_A6XX_GMU_BOOT_SLUMBER_OPTION ;
 int REG_A6XX_GMU_CX_GMU_POWER_COUNTER_ENABLE ;
 int REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE ;
 int a6xx_gmu_clear_oob (struct a6xx_gmu*,int ) ;
 int a6xx_gmu_set_oob (struct a6xx_gmu*,int ) ;
 int a6xx_sptprac_disable (struct a6xx_gmu*) ;
 int gmu_read (struct a6xx_gmu*,int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

__attribute__((used)) static int a6xx_gmu_notify_slumber(struct a6xx_gmu *gmu)
{
 int ret;


 gmu_write(gmu, REG_A6XX_GMU_CX_GMU_POWER_COUNTER_ENABLE, 0);


 if (gmu->idle_level < GMU_IDLE_STATE_SPTP)
  a6xx_sptprac_disable(gmu);


 gmu_write(gmu, REG_A6XX_GMU_BOOT_SLUMBER_OPTION, 1);

 ret = a6xx_gmu_set_oob(gmu, GMU_OOB_BOOT_SLUMBER);
 a6xx_gmu_clear_oob(gmu, GMU_OOB_BOOT_SLUMBER);

 if (!ret) {

  if (gmu_read(gmu, REG_A6XX_GPU_GMU_CX_GMU_RPMH_POWER_STATE)
   != 0x0f) {
   DRM_DEV_ERROR(gmu->dev, "The GMU did not go into slumber\n");
   ret = -ETIMEDOUT;
  }
 }


 gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, 0);
 return ret;
}
