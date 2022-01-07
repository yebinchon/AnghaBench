
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_power_info {int pc_enabled; scalar_t__ enable_power_containment; } ;
struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 scalar_t__ PPSMC_Result_OK ;
 int PPSMC_TDPClampingActive ;
 int PPSMC_TDPClampingInactive ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;
 struct ni_power_info* ni_get_pi (struct amdgpu_device*) ;
 int si_should_disable_uvd_powertune (struct amdgpu_device*,struct amdgpu_ps*) ;

__attribute__((used)) static int si_enable_power_containment(struct amdgpu_device *adev,
           struct amdgpu_ps *amdgpu_new_state,
           bool enable)
{
 struct ni_power_info *ni_pi = ni_get_pi(adev);
 PPSMC_Result smc_result;
 int ret = 0;

 if (ni_pi->enable_power_containment) {
  if (enable) {
   if (!si_should_disable_uvd_powertune(adev, amdgpu_new_state)) {
    smc_result = amdgpu_si_send_msg_to_smc(adev, PPSMC_TDPClampingActive);
    if (smc_result != PPSMC_Result_OK) {
     ret = -EINVAL;
     ni_pi->pc_enabled = 0;
    } else {
     ni_pi->pc_enabled = 1;
    }
   }
  } else {
   smc_result = amdgpu_si_send_msg_to_smc(adev, PPSMC_TDPClampingInactive);
   if (smc_result != PPSMC_Result_OK)
    ret = -EINVAL;
   ni_pi->pc_enabled = 0;
  }
 }

 return ret;
}
