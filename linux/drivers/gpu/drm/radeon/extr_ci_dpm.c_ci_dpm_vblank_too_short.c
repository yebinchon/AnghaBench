
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ mem_gddr5; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ r600_dpm_get_vblank_time (struct radeon_device*) ;
 int r600_dpm_get_vrefresh (struct radeon_device*) ;

bool ci_dpm_vblank_too_short(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 vblank_time = r600_dpm_get_vblank_time(rdev);
 u32 switch_limit = pi->mem_gddr5 ? 450 : 300;




 if (r600_dpm_get_vrefresh(rdev) > 120)
  return 1;

 if (vblank_time < switch_limit)
  return 1;
 else
  return 0;

}
