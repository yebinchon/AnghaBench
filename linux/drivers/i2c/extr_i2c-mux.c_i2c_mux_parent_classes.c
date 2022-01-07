
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {unsigned int class; } ;


 struct i2c_adapter* i2c_parent_is_i2c_adapter (struct i2c_adapter*) ;

__attribute__((used)) static unsigned int i2c_mux_parent_classes(struct i2c_adapter *parent)
{
 unsigned int class = 0;

 do {
  class |= parent->class;
  parent = i2c_parent_is_i2c_adapter(parent);
 } while (parent);

 return class;
}
