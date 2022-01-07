
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_power_info {int fw_version; int enable_alt_vddnb; } ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_SUMO ;
 scalar_t__ CHIP_SUMO2 ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static bool sumo_is_alt_vddnb_supported(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 bool return_code = 0;

 if (!pi->enable_alt_vddnb)
  return return_code;

 if ((rdev->family == CHIP_SUMO) || (rdev->family == CHIP_SUMO2)) {
  if (pi->fw_version >= 0x00010C00)
   return_code = 1;
 }

 return return_code;
}
