
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int DRM_ERROR (char*) ;
 int SMU_MSG_AllowGfxOff ;
 int SMU_MSG_DisallowGfxOff ;
 int msleep (int) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;
 int smu_v12_0_get_gfxoff_status (struct smu_context*) ;

__attribute__((used)) static int smu_v12_0_gfx_off_control(struct smu_context *smu, bool enable)
{
 int ret = 0, timeout = 500;

 if (enable) {
  ret = smu_send_smc_msg(smu, SMU_MSG_AllowGfxOff);


  while (!(smu_v12_0_get_gfxoff_status(smu) == 0)) {
   msleep(10);
   timeout--;
   if (timeout == 0) {
    DRM_ERROR("enable gfxoff timeout and failed!\n");
    break;
   }
  }
 } else {
  ret = smu_send_smc_msg(smu, SMU_MSG_DisallowGfxOff);


  while (!(smu_v12_0_get_gfxoff_status(smu) == 2)) {
   msleep(1);
   timeout--;
   if (timeout == 0) {
    DRM_ERROR("disable gfxoff timeout and failed!\n");
    break;
   }
  }
 }

 return ret;
}
