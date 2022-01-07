
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_power_info {int restricted_levels; } ;
struct radeon_device {int dummy; } ;


 int R600_POWER_LEVEL_MEDIUM ;
 int r600_power_level_enable (struct radeon_device*,int ,int) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_enable_medium(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 if (pi->restricted_levels < 2)
  r600_power_level_enable(rdev, R600_POWER_LEVEL_MEDIUM, 1);
}
