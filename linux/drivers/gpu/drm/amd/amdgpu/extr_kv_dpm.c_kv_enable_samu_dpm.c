
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_SAMUDPM_Disable ;
 int PPSMC_MSG_SAMUDPM_Enable ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;

__attribute__((used)) static int kv_enable_samu_dpm(struct amdgpu_device *adev, bool enable)
{
 return amdgpu_kv_notify_message_to_smu(adev, enable ?
     PPSMC_MSG_SAMUDPM_Enable : PPSMC_MSG_SAMUDPM_Disable);
}
