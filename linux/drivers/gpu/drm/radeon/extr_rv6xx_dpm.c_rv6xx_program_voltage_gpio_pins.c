
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_voltage_control_enable_pins (struct radeon_device*,int ) ;
 int rv6xx_get_master_voltage_mask (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_voltage_gpio_pins(struct radeon_device *rdev)
{
 r600_voltage_control_enable_pins(rdev,
      rv6xx_get_master_voltage_mask(rdev));
}
