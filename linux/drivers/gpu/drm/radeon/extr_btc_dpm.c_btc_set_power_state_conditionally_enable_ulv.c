
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supported; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;


 int btc_enable_ulv (struct radeon_device*) ;
 scalar_t__ btc_is_state_ulv_compatible (struct radeon_device*,struct radeon_ps*) ;
 int btc_set_ulv_dram_timing (struct radeon_device*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static int btc_set_power_state_conditionally_enable_ulv(struct radeon_device *rdev,
       struct radeon_ps *radeon_new_state)
{
 int ret = 0;
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (eg_pi->ulv.supported) {
  if (btc_is_state_ulv_compatible(rdev, radeon_new_state)) {

   ret = btc_set_ulv_dram_timing(rdev);
   if (ret == 0)
    ret = btc_enable_ulv(rdev);
  }
 }

 return ret;
}
