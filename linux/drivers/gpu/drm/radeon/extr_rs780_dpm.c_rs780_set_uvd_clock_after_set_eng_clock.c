
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {scalar_t__ vclk; scalar_t__ dclk; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {scalar_t__ sclk_high; } ;


 int radeon_set_uvd_clocks (struct radeon_device*,scalar_t__,scalar_t__) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rs780_set_uvd_clock_after_set_eng_clock(struct radeon_device *rdev,
          struct radeon_ps *new_ps,
          struct radeon_ps *old_ps)
{
 struct igp_ps *new_state = rs780_get_ps(new_ps);
 struct igp_ps *current_state = rs780_get_ps(old_ps);

 if ((new_ps->vclk == old_ps->vclk) &&
     (new_ps->dclk == old_ps->dclk))
  return;

 if (new_state->sclk_high < current_state->sclk_high)
  return;

 radeon_set_uvd_clocks(rdev, new_ps->vclk, new_ps->dclk);
}
