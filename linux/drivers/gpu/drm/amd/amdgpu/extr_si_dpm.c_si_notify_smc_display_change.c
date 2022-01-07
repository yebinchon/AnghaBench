
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef int PPSMC_Msg ;


 int EINVAL ;
 int PPSMC_MSG_HasDisplay ;
 int PPSMC_MSG_NoDisplay ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;

__attribute__((used)) static int si_notify_smc_display_change(struct amdgpu_device *adev,
         bool has_display)
{
 PPSMC_Msg msg = has_display ?
  PPSMC_MSG_HasDisplay : PPSMC_MSG_NoDisplay;

 return (amdgpu_si_send_msg_to_smc(adev, msg) == PPSMC_Result_OK) ?
  0 : -EINVAL;
}
