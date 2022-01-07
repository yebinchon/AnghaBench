
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_power_info {int disable_gfx_power_gating_in_uvd; scalar_t__ enable_gfx_power_gating; } ;
struct radeon_ps {int class2; int class; int dclk; int vclk; } ;
struct radeon_device {int dummy; } ;


 int r600_is_uvd_state (int ,int ) ;
 int radeon_set_uvd_clocks (struct radeon_device*,int ,int ) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_gfx_powergating_enable (struct radeon_device*,int) ;

__attribute__((used)) static void sumo_setup_uvd_clocks(struct radeon_device *rdev,
      struct radeon_ps *new_rps,
      struct radeon_ps *old_rps)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 if (pi->enable_gfx_power_gating) {
  sumo_gfx_powergating_enable(rdev, 0);
 }

 radeon_set_uvd_clocks(rdev, new_rps->vclk, new_rps->dclk);

 if (pi->enable_gfx_power_gating) {
  if (!pi->disable_gfx_power_gating_in_uvd ||
      !r600_is_uvd_state(new_rps->class, new_rps->class2))
   sumo_gfx_powergating_enable(rdev, 1);
 }
}
