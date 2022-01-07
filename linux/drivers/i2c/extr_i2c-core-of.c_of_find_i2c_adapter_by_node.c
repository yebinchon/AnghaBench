
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct device_node*,int ) ;
 int i2c_bus_type ;
 struct i2c_adapter* i2c_verify_adapter (struct device*) ;
 int of_dev_or_parent_node_match ;
 int put_device (struct device*) ;

struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
{
 struct device *dev;
 struct i2c_adapter *adapter;

 dev = bus_find_device(&i2c_bus_type, ((void*)0), node,
         of_dev_or_parent_node_match);
 if (!dev)
  return ((void*)0);

 adapter = i2c_verify_adapter(dev);
 if (!adapter)
  put_device(dev);

 return adapter;
}
