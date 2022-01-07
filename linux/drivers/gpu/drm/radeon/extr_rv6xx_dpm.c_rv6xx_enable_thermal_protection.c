
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_power_info {scalar_t__ active_auto_throttle_sources; } ;
struct radeon_device {int dummy; } ;


 int r600_enable_thermal_protection (struct radeon_device*,int) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_enable_thermal_protection(struct radeon_device *rdev,
         bool enable)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 if (pi->active_auto_throttle_sources)
  r600_enable_thermal_protection(rdev, enable);
}
