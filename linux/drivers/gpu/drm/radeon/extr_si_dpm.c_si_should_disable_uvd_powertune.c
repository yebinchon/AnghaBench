
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_uvd_powertune; } ;
struct si_power_info {TYPE_1__ dyn_powertune_data; } ;
struct radeon_ps {scalar_t__ dclk; scalar_t__ vclk; } ;
struct radeon_device {int dummy; } ;


 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static bool si_should_disable_uvd_powertune(struct radeon_device *rdev,
         struct radeon_ps *radeon_state)
{
 struct si_power_info *si_pi = si_get_pi(rdev);

 if (si_pi->dyn_powertune_data.disable_uvd_powertune &&
     radeon_state->vclk && radeon_state->dclk)
  return 1;

 return 0;
}
