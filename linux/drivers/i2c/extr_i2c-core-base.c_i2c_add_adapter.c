
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
struct i2c_adapter {int nr; struct device dev; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN (int,char*) ;
 int __i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int __i2c_first_dynamic_bus_num ;
 int core_lock ;
 int i2c_adapter_idr ;
 int i2c_register_adapter (struct i2c_adapter*) ;
 int idr_alloc (int *,struct i2c_adapter*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_alias_get_id (scalar_t__,char*) ;

int i2c_add_adapter(struct i2c_adapter *adapter)
{
 struct device *dev = &adapter->dev;
 int id;

 if (dev->of_node) {
  id = of_alias_get_id(dev->of_node, "i2c");
  if (id >= 0) {
   adapter->nr = id;
   return __i2c_add_numbered_adapter(adapter);
  }
 }

 mutex_lock(&core_lock);
 id = idr_alloc(&i2c_adapter_idr, adapter,
         __i2c_first_dynamic_bus_num, 0, GFP_KERNEL);
 mutex_unlock(&core_lock);
 if (WARN(id < 0, "couldn't get idr"))
  return id;

 adapter->nr = id;

 return i2c_register_adapter(adapter);
}
