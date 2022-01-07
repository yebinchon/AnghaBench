
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 unsigned int MAX_LOCKDEP_SUBCLASSES ;
 int WARN_ONCE (int,char*) ;
 struct i2c_adapter* i2c_parent_is_i2c_adapter (struct i2c_adapter*) ;

unsigned int i2c_adapter_depth(struct i2c_adapter *adapter)
{
 unsigned int depth = 0;

 while ((adapter = i2c_parent_is_i2c_adapter(adapter)))
  depth++;

 WARN_ONCE(depth >= MAX_LOCKDEP_SUBCLASSES,
    "adapter depth exceeds lockdep subclass limit\n");

 return depth;
}
