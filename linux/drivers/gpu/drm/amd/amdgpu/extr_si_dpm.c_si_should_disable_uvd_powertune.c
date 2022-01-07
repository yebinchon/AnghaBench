
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disable_uvd_powertune; } ;
struct si_power_info {TYPE_1__ dyn_powertune_data; } ;
struct amdgpu_ps {scalar_t__ dclk; scalar_t__ vclk; } ;
struct amdgpu_device {int dummy; } ;


 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static bool si_should_disable_uvd_powertune(struct amdgpu_device *adev,
         struct amdgpu_ps *amdgpu_state)
{
 struct si_power_info *si_pi = si_get_pi(adev);

 if (si_pi->dyn_powertune_data.disable_uvd_powertune &&
     amdgpu_state->vclk && amdgpu_state->dclk)
  return 1;

 return 0;
}
