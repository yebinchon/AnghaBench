
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; int flags; int disp_priority; } ;


 scalar_t__ ASIC_IS_R300 (struct radeon_device*) ;
 scalar_t__ CHIP_RV515 ;
 int RADEON_IS_IGP ;
 int radeon_disp_priority ;

void radeon_update_display_priority(struct radeon_device *rdev)
{

 if ((radeon_disp_priority == 0) || (radeon_disp_priority > 2)) {






  if ((ASIC_IS_R300(rdev) || (rdev->family == CHIP_RV515)) &&
      !(rdev->flags & RADEON_IS_IGP))
   rdev->disp_priority = 2;
  else
   rdev->disp_priority = 0;
 } else
  rdev->disp_priority = radeon_disp_priority;

}
