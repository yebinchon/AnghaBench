
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vddc; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 int R600_PM_NUMBER_OF_VOLTAGE_LEVELS ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_program_voltage_stepping_entry (struct radeon_device*,int,int ) ;

__attribute__((used)) static void rv6xx_program_voltage_stepping_parameters_except_lowest_entry(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);
 int i;

 for (i = 1; i < R600_PM_NUMBER_OF_VOLTAGE_LEVELS; i++)
  rv6xx_program_voltage_stepping_entry(rdev, i,
           pi->hw.vddc[i]);

}
