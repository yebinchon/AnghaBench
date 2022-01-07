
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_Halt ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;
 scalar_t__ amdgpu_si_wait_for_smc_inactive (struct amdgpu_device*) ;

__attribute__((used)) static int si_halt_smc(struct amdgpu_device *adev)
{
 if (amdgpu_si_send_msg_to_smc(adev, PPSMC_MSG_Halt) != PPSMC_Result_OK)
  return -EINVAL;

 return (amdgpu_si_wait_for_smc_inactive(adev) == PPSMC_Result_OK) ?
  0 : -EINVAL;
}
