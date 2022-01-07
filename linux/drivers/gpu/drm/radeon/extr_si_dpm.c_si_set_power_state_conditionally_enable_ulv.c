
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_ulv_param {scalar_t__ supported; } ;
struct si_power_info {struct si_ulv_param ulv; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_EnableULV ;
 scalar_t__ PPSMC_Result_OK ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 scalar_t__ si_is_state_ulv_compatible (struct radeon_device*,struct radeon_ps*) ;
 scalar_t__ si_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int si_set_power_state_conditionally_enable_ulv(struct radeon_device *rdev,
             struct radeon_ps *radeon_new_state)
{
 const struct si_power_info *si_pi = si_get_pi(rdev);
 const struct si_ulv_param *ulv = &si_pi->ulv;

 if (ulv->supported) {
  if (si_is_state_ulv_compatible(rdev, radeon_new_state))
   return (si_send_msg_to_smc(rdev, PPSMC_MSG_EnableULV) == PPSMC_Result_OK) ?
    0 : -EINVAL;
 }
 return 0;
}
