
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int REG_A6XX_GMU_HFI_CTRL_INIT ;
 int REG_A6XX_GMU_HFI_CTRL_STATUS ;
 int gmu_poll_timeout (struct a6xx_gmu*,int ,int,int,int,int) ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

__attribute__((used)) static int a6xx_gmu_hfi_start(struct a6xx_gmu *gmu)
{
 u32 val;
 int ret;

 gmu_write(gmu, REG_A6XX_GMU_HFI_CTRL_INIT, 1);

 ret = gmu_poll_timeout(gmu, REG_A6XX_GMU_HFI_CTRL_STATUS, val,
  val & 1, 100, 10000);
 if (ret)
  DRM_DEV_ERROR(gmu->dev, "Unable to start the HFI queues\n");

 return ret;
}
