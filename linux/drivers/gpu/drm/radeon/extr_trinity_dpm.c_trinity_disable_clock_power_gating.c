
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trinity_power_info {scalar_t__ enable_mg_clock_gating; scalar_t__ enable_gfx_clock_gating; scalar_t__ enable_gfx_dynamic_mgpg; scalar_t__ enable_gfx_power_gating; } ;
struct radeon_device {int dummy; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_gfx_clockgating_enable (struct radeon_device*,int) ;
 int trinity_gfx_dynamic_mgpg_enable (struct radeon_device*,int) ;
 int trinity_gfx_powergating_enable (struct radeon_device*,int) ;
 int trinity_ls_clockgating_enable (struct radeon_device*,int) ;
 int trinity_mg_clockgating_enable (struct radeon_device*,int) ;

__attribute__((used)) static void trinity_disable_clock_power_gating(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 if (pi->enable_gfx_power_gating)
  trinity_gfx_powergating_enable(rdev, 0);
 if (pi->enable_gfx_dynamic_mgpg)
  trinity_gfx_dynamic_mgpg_enable(rdev, 0);
 if (pi->enable_gfx_clock_gating)
  trinity_gfx_clockgating_enable(rdev, 0);
 if (pi->enable_mg_clock_gating) {
  trinity_mg_clockgating_enable(rdev, 0);
  trinity_ls_clockgating_enable(rdev, 0);
 }
}
