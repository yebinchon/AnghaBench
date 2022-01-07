
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int bus_lock; } ;


 int rt_mutex_lock_nested (int *,int) ;

__attribute__((used)) static void cht_wc_i2c_adap_lock_bus(struct i2c_adapter *adapter,
     unsigned int flags)
{
 rt_mutex_lock_nested(&adapter->bus_lock, 1);
}
