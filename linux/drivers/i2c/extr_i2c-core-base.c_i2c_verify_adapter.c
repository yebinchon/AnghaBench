
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device {int * type; } ;


 int i2c_adapter_type ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

struct i2c_adapter *i2c_verify_adapter(struct device *dev)
{
 return (dev->type == &i2c_adapter_type)
   ? to_i2c_adapter(dev)
   : ((void*)0);
}
