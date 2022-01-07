
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; int flags; } ;


 scalar_t__ CHIP_RV770 ;
 int RADEON_IS_MOBILITY ;
 int r600_dpm_get_vblank_time (struct radeon_device*) ;

bool rv770_dpm_vblank_too_short(struct radeon_device *rdev)
{
 u32 vblank_time = r600_dpm_get_vblank_time(rdev);
 u32 switch_limit = 200;



 if ((rdev->family == CHIP_RV770) &&
     !(rdev->flags & RADEON_IS_MOBILITY))
  switch_limit = 0xffffffff;

 if (vblank_time < switch_limit)
  return 1;
 else
  return 0;

}
