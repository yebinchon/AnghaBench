
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_power_info {int pc_enabled; scalar_t__ enable_power_containment; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 scalar_t__ PPSMC_Result_OK ;
 int PPSMC_TDPClampingActive ;
 int PPSMC_TDPClampingInactive ;
 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 scalar_t__ si_send_msg_to_smc (struct radeon_device*,int ) ;
 int si_should_disable_uvd_powertune (struct radeon_device*,struct radeon_ps*) ;

__attribute__((used)) static int si_enable_power_containment(struct radeon_device *rdev,
           struct radeon_ps *radeon_new_state,
           bool enable)
{
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 PPSMC_Result smc_result;
 int ret = 0;

 if (ni_pi->enable_power_containment) {
  if (enable) {
   if (!si_should_disable_uvd_powertune(rdev, radeon_new_state)) {
    smc_result = si_send_msg_to_smc(rdev, PPSMC_TDPClampingActive);
    if (smc_result != PPSMC_Result_OK) {
     ret = -EINVAL;
     ni_pi->pc_enabled = 0;
    } else {
     ni_pi->pc_enabled = 1;
    }
   }
  } else {
   smc_result = si_send_msg_to_smc(rdev, PPSMC_TDPClampingInactive);
   if (smc_result != PPSMC_Result_OK)
    ret = -EINVAL;
   ni_pi->pc_enabled = 0;
  }
 }

 return ret;
}
