
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_power_info {scalar_t__ voltage_control; } ;
struct radeon_device {int dummy; } ;


 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_program_backbias_stepping_parameters_lowest_entry (struct radeon_device*) ;
 int rv6xx_program_mclk_stepping_parameters_lowest_entry (struct radeon_device*) ;
 int rv6xx_program_sclk_spread_spectrum_parameters_lowest_entry (struct radeon_device*) ;
 int rv6xx_program_voltage_stepping_parameters_lowest_entry (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_stepping_parameters_lowest_entry(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 rv6xx_program_mclk_stepping_parameters_lowest_entry(rdev);
 if (pi->voltage_control)
  rv6xx_program_voltage_stepping_parameters_lowest_entry(rdev);
 rv6xx_program_backbias_stepping_parameters_lowest_entry(rdev);
 rv6xx_program_sclk_spread_spectrum_parameters_lowest_entry(rdev);
}
