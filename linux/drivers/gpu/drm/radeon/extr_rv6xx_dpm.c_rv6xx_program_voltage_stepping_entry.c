
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct radeon_device {int dummy; } ;


 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int r600_voltage_control_program_voltages (struct radeon_device*,int ,int ) ;
 int radeon_atom_get_voltage_gpio_settings (struct radeon_device*,int ,int ,int *,int *) ;

__attribute__((used)) static int rv6xx_program_voltage_stepping_entry(struct radeon_device *rdev,
      u32 entry, u16 voltage)
{
 u32 mask, set_pins;
 int ret;

 ret = radeon_atom_get_voltage_gpio_settings(rdev, voltage,
          SET_VOLTAGE_TYPE_ASIC_VDDC,
          &set_pins, &mask);
 if (ret)
  return ret;

 r600_voltage_control_program_voltages(rdev, entry, set_pins);

 return 0;
}
