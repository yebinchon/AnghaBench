
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_mux_priv {TYPE_1__* muxc; } ;
struct i2c_adapter {int mux_lock; struct i2c_mux_priv* algo_data; } ;
struct TYPE_2__ {struct i2c_adapter* parent; } ;


 unsigned int I2C_LOCK_ROOT_ADAPTER ;
 int i2c_unlock_bus (struct i2c_adapter*,unsigned int) ;
 int rt_mutex_unlock (int *) ;

__attribute__((used)) static void i2c_mux_unlock_bus(struct i2c_adapter *adapter, unsigned int flags)
{
 struct i2c_mux_priv *priv = adapter->algo_data;
 struct i2c_adapter *parent = priv->muxc->parent;

 if (flags & I2C_LOCK_ROOT_ADAPTER)
  i2c_unlock_bus(parent, flags);
 rt_mutex_unlock(&parent->mux_lock);
}
