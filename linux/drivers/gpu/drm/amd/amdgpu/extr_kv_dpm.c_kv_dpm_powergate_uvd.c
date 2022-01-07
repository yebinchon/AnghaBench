
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kv_power_info {int uvd_power_gated; scalar_t__ caps_uvd_pg; } ;
struct amdgpu_device {int dummy; } ;


 int AMD_IP_BLOCK_TYPE_UVD ;
 int AMD_PG_STATE_GATE ;
 int AMD_PG_STATE_UNGATE ;
 int PPSMC_MSG_UVDPowerOFF ;
 int PPSMC_MSG_UVDPowerON ;
 int amdgpu_device_ip_set_powergating_state (struct amdgpu_device*,int ,int ) ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_update_uvd_dpm (struct amdgpu_device*,int) ;

__attribute__((used)) static void kv_dpm_powergate_uvd(void *handle, bool gate)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret;

 pi->uvd_power_gated = gate;

 if (gate) {

  ret = amdgpu_device_ip_set_powergating_state(adev, AMD_IP_BLOCK_TYPE_UVD,
            AMD_PG_STATE_GATE);
  kv_update_uvd_dpm(adev, gate);
  if (pi->caps_uvd_pg)

   amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_UVDPowerOFF);
 } else {
  if (pi->caps_uvd_pg)

   amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_UVDPowerON);

  kv_update_uvd_dpm(adev, gate);

  ret = amdgpu_device_ip_set_powergating_state(adev, AMD_IP_BLOCK_TYPE_UVD,
            AMD_PG_STATE_UNGATE);
 }
}
