
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sclk; } ;
struct rv6xx_ps {TYPE_1__ high; } ;
struct radeon_ps {scalar_t__ vclk; scalar_t__ dclk; } ;
struct radeon_device {int dummy; } ;


 int radeon_set_uvd_clocks (struct radeon_device*,scalar_t__,scalar_t__) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_set_uvd_clock_before_set_eng_clock(struct radeon_device *rdev,
           struct radeon_ps *new_ps,
           struct radeon_ps *old_ps)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);
 struct rv6xx_ps *current_state = rv6xx_get_ps(old_ps);

 if ((new_ps->vclk == old_ps->vclk) &&
     (new_ps->dclk == old_ps->dclk))
  return;

 if (new_state->high.sclk >= current_state->high.sclk)
  return;

 radeon_set_uvd_clocks(rdev, new_ps->vclk, new_ps->dclk);
}
