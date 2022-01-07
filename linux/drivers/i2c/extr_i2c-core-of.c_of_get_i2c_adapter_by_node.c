
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; int owner; } ;
struct device_node {int dummy; } ;


 struct i2c_adapter* of_find_i2c_adapter_by_node (struct device_node*) ;
 int put_device (int *) ;
 int try_module_get (int ) ;

struct i2c_adapter *of_get_i2c_adapter_by_node(struct device_node *node)
{
 struct i2c_adapter *adapter;

 adapter = of_find_i2c_adapter_by_node(node);
 if (!adapter)
  return ((void*)0);

 if (!try_module_get(adapter->owner)) {
  put_device(&adapter->dev);
  adapter = ((void*)0);
 }

 return adapter;
}
