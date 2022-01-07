
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {int cac_enabled; scalar_t__ caps_cac; } ;
struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_DisableCac ;
 int PPSMC_MSG_EnableCac ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int kv_enable_smc_cac(struct amdgpu_device *adev, bool enable)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret = 0;

 if (pi->caps_cac) {
  if (enable) {
   ret = amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_EnableCac);
   if (ret)
    pi->cac_enabled = 0;
   else
    pi->cac_enabled = 1;
  } else if (pi->cac_enabled) {
   amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_DisableCac);
   pi->cac_enabled = 0;
  }
 }

 return ret;
}
