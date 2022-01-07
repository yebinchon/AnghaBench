
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras_eeprom_control {int eeprom_accessor; } ;
struct amdgpu_device {int asic_type; } ;



 int smu_v11_0_i2c_eeprom_control_fini (int *) ;
 struct amdgpu_device* to_amdgpu_device (struct amdgpu_ras_eeprom_control*) ;

void amdgpu_ras_eeprom_fini(struct amdgpu_ras_eeprom_control *control)
{
 struct amdgpu_device *adev = to_amdgpu_device(control);

 switch (adev->asic_type) {
 case 128:
  smu_v11_0_i2c_eeprom_control_fini(&control->eeprom_accessor);
  break;

 default:
  return;
 }
}
