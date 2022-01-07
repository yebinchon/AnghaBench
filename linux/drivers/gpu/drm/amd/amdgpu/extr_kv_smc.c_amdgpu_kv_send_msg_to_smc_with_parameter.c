
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef int PPSMC_Msg ;


 int WREG32 (int ,int ) ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 int mmSMC_MSG_ARG_0 ;

int amdgpu_kv_send_msg_to_smc_with_parameter(struct amdgpu_device *adev,
          PPSMC_Msg msg, u32 parameter)
{

 WREG32(mmSMC_MSG_ARG_0, parameter);

 return amdgpu_kv_notify_message_to_smu(adev, msg);
}
