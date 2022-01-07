
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vddc; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_program_voltage_stepping_entry (struct radeon_device*,int ,int ) ;

__attribute__((used)) static void rv6xx_program_voltage_stepping_parameters_lowest_entry(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 rv6xx_program_voltage_stepping_entry(rdev, 0,
          pi->hw.vddc[0]);

}
