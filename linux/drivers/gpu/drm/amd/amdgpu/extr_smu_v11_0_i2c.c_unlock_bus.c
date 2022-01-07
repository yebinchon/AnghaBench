
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct amdgpu_ras_eeprom_control {int bus_locked; } ;


 int DRM_ERROR (char*) ;
 int smu_v11_0_i2c_bus_unlock (struct i2c_adapter*) ;
 struct amdgpu_ras_eeprom_control* to_eeprom_control (struct i2c_adapter*) ;

__attribute__((used)) static void unlock_bus(struct i2c_adapter *i2c, unsigned int flags)
{
 struct amdgpu_ras_eeprom_control *control = to_eeprom_control(i2c);

 if (!smu_v11_0_i2c_bus_unlock(i2c)) {
  DRM_ERROR("Failed to unlock the bus from SMU");
  return;
 }

 control->bus_locked = 0;
}
