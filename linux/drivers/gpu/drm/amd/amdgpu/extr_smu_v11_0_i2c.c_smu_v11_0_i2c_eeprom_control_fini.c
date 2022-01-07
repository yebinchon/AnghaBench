
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int i2c_del_adapter (struct i2c_adapter*) ;

void smu_v11_0_i2c_eeprom_control_fini(struct i2c_adapter *control)
{
 i2c_del_adapter(control);
}
