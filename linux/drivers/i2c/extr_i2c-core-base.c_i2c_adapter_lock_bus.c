
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int bus_lock; } ;


 int i2c_adapter_depth (struct i2c_adapter*) ;
 int rt_mutex_lock_nested (int *,int ) ;

__attribute__((used)) static void i2c_adapter_lock_bus(struct i2c_adapter *adapter,
     unsigned int flags)
{
 rt_mutex_lock_nested(&adapter->bus_lock, i2c_adapter_depth(adapter));
}
