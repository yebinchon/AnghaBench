
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_SwitchToSwState ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;

__attribute__((used)) static int si_set_sw_state(struct amdgpu_device *adev)
{
 return (amdgpu_si_send_msg_to_smc(adev, PPSMC_MSG_SwitchToSwState) == PPSMC_Result_OK) ?
  0 : -EINVAL;
}
