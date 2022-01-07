
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_POWER_LEVEL_MEDIUM ;
 int r600_power_level_set_enter_index (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_program_power_level_enter_state(struct radeon_device *rdev)
{
 r600_power_level_set_enter_index(rdev, R600_POWER_LEVEL_MEDIUM);
}
