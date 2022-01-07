
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {int force_bit; } ;
struct i2c_adapter {int dummy; } ;


 struct intel_gmbus* to_intel_gmbus (struct i2c_adapter*) ;

bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
{
 struct intel_gmbus *bus = to_intel_gmbus(adapter);

 return bus->force_bit;
}
