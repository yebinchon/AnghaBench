
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trinity_power_info {scalar_t__ enable_gfx_power_gating; scalar_t__ uvd_dpm; } ;
struct radeon_ps {int dclk; int vclk; } ;
struct radeon_device {int dummy; } ;


 int CG_MISC_REG ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_set_uvd_clocks (struct radeon_device*,int ,int ) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_gfx_powergating_enable (struct radeon_device*,int) ;
 int trinity_setup_uvd_clock_table (struct radeon_device*,struct radeon_ps*) ;
 int trinity_setup_uvd_dpm_interval (struct radeon_device*,int) ;
 scalar_t__ trinity_uvd_clocks_equal (struct radeon_ps*,struct radeon_ps*) ;
 scalar_t__ trinity_uvd_clocks_zero (struct radeon_ps*) ;
 int trinity_uvd_dpm_config (struct radeon_device*) ;

__attribute__((used)) static void trinity_setup_uvd_clocks(struct radeon_device *rdev,
         struct radeon_ps *new_rps,
         struct radeon_ps *old_rps)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 if (pi->enable_gfx_power_gating) {
  trinity_gfx_powergating_enable(rdev, 0);
 }

 if (pi->uvd_dpm) {
  if (trinity_uvd_clocks_zero(new_rps) &&
      !trinity_uvd_clocks_zero(old_rps)) {
   trinity_setup_uvd_dpm_interval(rdev, 0);
  } else if (!trinity_uvd_clocks_zero(new_rps)) {
   trinity_setup_uvd_clock_table(rdev, new_rps);

   if (trinity_uvd_clocks_zero(old_rps)) {
    u32 tmp = RREG32(CG_MISC_REG);
    tmp &= 0xfffffffd;
    WREG32(CG_MISC_REG, tmp);

    radeon_set_uvd_clocks(rdev, new_rps->vclk, new_rps->dclk);

    trinity_setup_uvd_dpm_interval(rdev, 3000);
   }
  }
  trinity_uvd_dpm_config(rdev);
 } else {
  if (trinity_uvd_clocks_zero(new_rps) ||
      trinity_uvd_clocks_equal(new_rps, old_rps))
   return;

  radeon_set_uvd_clocks(rdev, new_rps->vclk, new_rps->dclk);
 }

 if (pi->enable_gfx_power_gating) {
  trinity_gfx_powergating_enable(rdev, 1);
 }
}
