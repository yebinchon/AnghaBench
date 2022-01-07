
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int bus_lock; } ;


 int rt_mutex_trylock (int *) ;

__attribute__((used)) static int cht_wc_i2c_adap_trylock_bus(struct i2c_adapter *adapter,
       unsigned int flags)
{
 return rt_mutex_trylock(&adapter->bus_lock);
}
