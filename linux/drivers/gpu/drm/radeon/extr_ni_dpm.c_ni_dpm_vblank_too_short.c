
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mem_gddr5; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ r600_dpm_get_vblank_time (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

bool ni_dpm_vblank_too_short(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u32 vblank_time = r600_dpm_get_vblank_time(rdev);

 u32 switch_limit = pi->mem_gddr5 ? 450 : 0;

 if (vblank_time < switch_limit)
  return 1;
 else
  return 0;

}
