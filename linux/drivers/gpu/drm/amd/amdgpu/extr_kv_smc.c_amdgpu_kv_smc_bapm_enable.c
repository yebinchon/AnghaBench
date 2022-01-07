
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_DisableBAPM ;
 int PPSMC_MSG_EnableBAPM ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;

int amdgpu_kv_smc_bapm_enable(struct amdgpu_device *adev, bool enable)
{
 if (enable)
  return amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_EnableBAPM);
 else
  return amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_DisableBAPM);
}
