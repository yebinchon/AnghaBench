
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_mux_priv {TYPE_1__* muxc; } ;
struct i2c_adapter {int mux_lock; struct i2c_mux_priv* algo_data; } ;
struct TYPE_2__ {struct i2c_adapter* parent; } ;


 scalar_t__ i2c_trylock_bus (struct i2c_adapter*,unsigned int) ;
 int rt_mutex_trylock (int *) ;
 int rt_mutex_unlock (int *) ;

__attribute__((used)) static int i2c_parent_trylock_bus(struct i2c_adapter *adapter,
      unsigned int flags)
{
 struct i2c_mux_priv *priv = adapter->algo_data;
 struct i2c_adapter *parent = priv->muxc->parent;

 if (!rt_mutex_trylock(&parent->mux_lock))
  return 0;
 if (i2c_trylock_bus(parent, flags))
  return 1;
 rt_mutex_unlock(&parent->mux_lock);
 return 0;
}
