
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct device {int * type; struct device* parent; } ;


 int i2c_adapter_type ;
 struct i2c_adapter* i2c_parent_is_i2c_adapter (struct i2c_adapter*) ;
 struct i2c_adapter* to_i2c_adapter (struct device*) ;

struct i2c_adapter *i2c_root_adapter(struct device *dev)
{
 struct device *i2c;
 struct i2c_adapter *i2c_root;






 for (i2c = dev; i2c; i2c = i2c->parent) {
  if (i2c->type == &i2c_adapter_type)
   break;
 }
 if (!i2c)
  return ((void*)0);


 i2c_root = to_i2c_adapter(i2c);
 while (i2c_parent_is_i2c_adapter(i2c_root))
  i2c_root = i2c_parent_is_i2c_adapter(i2c_root);

 return i2c_root;
}
