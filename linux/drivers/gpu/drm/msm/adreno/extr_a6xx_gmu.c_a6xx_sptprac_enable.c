
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int ) ;
 int REG_A6XX_GMU_GX_SPTPRAC_POWER_CONTROL ;
 int REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS ;
 int gmu_poll_timeout (struct a6xx_gmu*,int ,int,int,int,int) ;
 int gmu_read (struct a6xx_gmu*,int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

__attribute__((used)) static int a6xx_sptprac_enable(struct a6xx_gmu *gmu)
{
 int ret;
 u32 val;

 gmu_write(gmu, REG_A6XX_GMU_GX_SPTPRAC_POWER_CONTROL, 0x778000);

 ret = gmu_poll_timeout(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS, val,
  (val & 0x38) == 0x28, 1, 100);

 if (ret) {
  DRM_DEV_ERROR(gmu->dev, "Unable to power on SPTPRAC: 0x%x\n",
   gmu_read(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS));
 }

 return 0;
}
