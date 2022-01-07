
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int __i2c_bit_add_bus (struct i2c_adapter*,int ) ;
 int i2c_add_adapter ;

int i2c_bit_add_bus(struct i2c_adapter *adap)
{
 return __i2c_bit_add_bus(adap, i2c_add_adapter);
}
