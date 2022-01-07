
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int device_for_each_child (int *,int*,int ) ;
 int i2c_check_mux_children ;
 int i2c_check_mux_parents (struct i2c_adapter*,int) ;
 struct i2c_adapter* i2c_parent_is_i2c_adapter (struct i2c_adapter*) ;

__attribute__((used)) static int i2c_check_addr_busy(struct i2c_adapter *adapter, int addr)
{
 struct i2c_adapter *parent = i2c_parent_is_i2c_adapter(adapter);
 int result = 0;

 if (parent)
  result = i2c_check_mux_parents(parent, addr);

 if (!result)
  result = device_for_each_child(&adapter->dev, &addr,
      i2c_check_mux_children);

 return result;
}
