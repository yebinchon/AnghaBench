
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sumo_ps {int num_levels; TYPE_1__* levels; } ;
struct radeon_ps {scalar_t__ vclk; scalar_t__ dclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ sclk; } ;


 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;
 int sumo_setup_uvd_clocks (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ;

__attribute__((used)) static void sumo_set_uvd_clock_after_set_eng_clock(struct radeon_device *rdev,
         struct radeon_ps *new_rps,
         struct radeon_ps *old_rps)
{
 struct sumo_ps *new_ps = sumo_get_ps(new_rps);
 struct sumo_ps *current_ps = sumo_get_ps(old_rps);

 if ((new_rps->vclk == old_rps->vclk) &&
     (new_rps->dclk == old_rps->dclk))
  return;

 if (new_ps->levels[new_ps->num_levels - 1].sclk <
     current_ps->levels[current_ps->num_levels - 1].sclk)
  return;

 sumo_setup_uvd_clocks(rdev, new_rps, old_rps);
}
