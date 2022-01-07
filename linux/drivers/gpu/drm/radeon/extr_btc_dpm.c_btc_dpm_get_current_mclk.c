
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv7xx_pl {int mclk; } ;
struct rv7xx_ps {struct rv7xx_pl high; struct rv7xx_pl medium; struct rv7xx_pl low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {struct radeon_ps current_rps; } ;


 int CURRENT_PROFILE_INDEX_MASK ;
 int CURRENT_PROFILE_INDEX_SHIFT ;
 int RREG32 (int ) ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;

u32 btc_dpm_get_current_mclk(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct radeon_ps *rps = &eg_pi->current_rps;
 struct rv7xx_ps *ps = rv770_get_ps(rps);
 struct rv7xx_pl *pl;
 u32 current_index =
  (RREG32(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_PROFILE_INDEX_MASK) >>
  CURRENT_PROFILE_INDEX_SHIFT;

 if (current_index > 2) {
  return 0;
 } else {
  if (current_index == 0)
   pl = &ps->low;
  else if (current_index == 1)
   pl = &ps->medium;
  else
   pl = &ps->high;
  return pl->mclk;
 }
}
