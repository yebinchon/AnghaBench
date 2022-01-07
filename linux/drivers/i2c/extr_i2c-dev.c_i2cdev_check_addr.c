
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int device_for_each_child (int *,unsigned int*,int ) ;
 struct i2c_adapter* i2c_parent_is_i2c_adapter (struct i2c_adapter*) ;
 int i2cdev_check_mux_children ;
 int i2cdev_check_mux_parents (struct i2c_adapter*,unsigned int) ;

__attribute__((used)) static int i2cdev_check_addr(struct i2c_adapter *adapter, unsigned int addr)
{
 struct i2c_adapter *parent = i2c_parent_is_i2c_adapter(adapter);
 int result = 0;

 if (parent)
  result = i2cdev_check_mux_parents(parent, addr);

 if (!result)
  result = device_for_each_child(&adapter->dev, &addr,
      i2cdev_check_mux_children);

 return result;
}
