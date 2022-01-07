
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_mux_priv {TYPE_1__* muxc; } ;
struct i2c_adapter {int mux_lock; struct i2c_mux_priv* algo_data; } ;
struct TYPE_2__ {struct i2c_adapter* parent; } ;


 int i2c_unlock_bus (struct i2c_adapter*,unsigned int) ;
 int rt_mutex_unlock (int *) ;

__attribute__((used)) static void i2c_parent_unlock_bus(struct i2c_adapter *adapter,
      unsigned int flags)
{
 struct i2c_mux_priv *priv = adapter->algo_data;
 struct i2c_adapter *parent = priv->muxc->parent;

 i2c_unlock_bus(parent, flags);
 rt_mutex_unlock(&parent->mux_lock);
}
