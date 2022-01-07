
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int class2; int class; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {int uvd_enabled; } ;


 int RV770_SMC_SOFT_REGISTER_uvd_enabled ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 scalar_t__ r600_is_uvd_state (int ,int ) ;
 int rv770_write_smc_soft_register (struct radeon_device*,int ,int) ;

void btc_notify_uvd_to_smc(struct radeon_device *rdev,
      struct radeon_ps *radeon_new_state)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (r600_is_uvd_state(radeon_new_state->class, radeon_new_state->class2)) {
  rv770_write_smc_soft_register(rdev,
           RV770_SMC_SOFT_REGISTER_uvd_enabled, 1);
  eg_pi->uvd_enabled = 1;
 } else {
  rv770_write_smc_soft_register(rdev,
           RV770_SMC_SOFT_REGISTER_uvd_enabled, 0);
  eg_pi->uvd_enabled = 0;
 }
}
