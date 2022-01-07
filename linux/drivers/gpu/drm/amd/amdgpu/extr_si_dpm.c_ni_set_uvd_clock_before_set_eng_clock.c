
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_ps {int performance_level_count; TYPE_1__* performance_levels; } ;
struct amdgpu_ps {scalar_t__ vclk; scalar_t__ dclk; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ sclk; } ;


 int amdgpu_asic_set_uvd_clocks (struct amdgpu_device*,scalar_t__,scalar_t__) ;
 struct si_ps* si_get_ps (struct amdgpu_ps*) ;

__attribute__((used)) static void ni_set_uvd_clock_before_set_eng_clock(struct amdgpu_device *adev,
        struct amdgpu_ps *new_ps,
        struct amdgpu_ps *old_ps)
{
 struct si_ps *new_state = si_get_ps(new_ps);
 struct si_ps *current_state = si_get_ps(old_ps);

 if ((new_ps->vclk == old_ps->vclk) &&
     (new_ps->dclk == old_ps->dclk))
  return;

 if (new_state->performance_levels[new_state->performance_level_count - 1].sclk >=
     current_state->performance_levels[current_state->performance_level_count - 1].sclk)
  return;

 amdgpu_asic_set_uvd_clocks(adev, new_ps->vclk, new_ps->dclk);
}
