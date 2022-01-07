
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {int nb_dpm_enabled; scalar_t__ enable_nb_dpm; } ;
struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_NBDPM_Disable ;
 int PPSMC_MSG_NBDPM_Enable ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int kv_enable_nb_dpm(struct amdgpu_device *adev,
       bool enable)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret = 0;

 if (enable) {
  if (pi->enable_nb_dpm && !pi->nb_dpm_enabled) {
   ret = amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_NBDPM_Enable);
   if (ret == 0)
    pi->nb_dpm_enabled = 1;
  }
 } else {
  if (pi->enable_nb_dpm && pi->nb_dpm_enabled) {
   ret = amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_NBDPM_Disable);
   if (ret == 0)
    pi->nb_dpm_enabled = 0;
  }
 }

 return ret;
}
