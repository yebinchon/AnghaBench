
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {int mutex; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int pp_feature; } ;
struct amdgpu_device {int asic_type; TYPE_1__ pm; } ;






 int PP_GFXOFF_MASK ;
 int SMU_MSG_AllowGfxOff ;
 int SMU_MSG_DisallowGfxOff ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v11_0_gfx_off_control(struct smu_context *smu, bool enable)
{
 int ret = 0;
 struct amdgpu_device *adev = smu->adev;

 switch (adev->asic_type) {
 case 128:
  break;
 case 131:
 case 129:
 case 130:
  if (!(adev->pm.pp_feature & PP_GFXOFF_MASK))
   return 0;
  mutex_lock(&smu->mutex);
  if (enable)
   ret = smu_send_smc_msg(smu, SMU_MSG_AllowGfxOff);
  else
   ret = smu_send_smc_msg(smu, SMU_MSG_DisallowGfxOff);
  mutex_unlock(&smu->mutex);
  break;
 default:
  break;
 }

 return ret;
}
