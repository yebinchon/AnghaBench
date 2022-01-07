
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int bus_lock; } ;


 int rt_mutex_unlock (int *) ;

__attribute__((used)) static void i2c_adapter_unlock_bus(struct i2c_adapter *adapter,
       unsigned int flags)
{
 rt_mutex_unlock(&adapter->bus_lock);
}
