
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {int reg0; } ;
struct i2c_adapter {int dummy; } ;


 struct intel_gmbus* to_intel_gmbus (struct i2c_adapter*) ;

void gma_intel_gmbus_set_speed(struct i2c_adapter *adapter, int speed)
{
 struct intel_gmbus *bus = to_intel_gmbus(adapter);







 bus->reg0 = (bus->reg0 & ~(0x3 << 8)) | (speed << 8);
}
