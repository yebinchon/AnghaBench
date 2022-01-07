
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {int samu_power_gated; scalar_t__ caps_samu_pg; } ;
struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_SAMPowerOFF ;
 int PPSMC_MSG_SAMPowerON ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_update_samu_dpm (struct amdgpu_device*,int) ;

__attribute__((used)) static void kv_dpm_powergate_samu(struct amdgpu_device *adev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(adev);

 if (pi->samu_power_gated == gate)
  return;

 pi->samu_power_gated = gate;

 if (gate) {
  kv_update_samu_dpm(adev, 1);
  if (pi->caps_samu_pg)
   amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_SAMPowerOFF);
 } else {
  if (pi->caps_samu_pg)
   amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_SAMPowerON);
  kv_update_samu_dpm(adev, 0);
 }
}
