
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;
typedef enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;


 int r600_power_level_get_current_index (struct radeon_device*) ;
 int r600_power_level_get_target_index (struct radeon_device*) ;
 int udelay (int) ;

void r600_wait_for_power_level_unequal(struct radeon_device *rdev,
           enum r600_power_level index)
{
 int i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (r600_power_level_get_target_index(rdev) != index)
   break;
  udelay(1);
 }

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (r600_power_level_get_current_index(rdev) != index)
   break;
  udelay(1);
 }
}
