
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_mux_priv {TYPE_1__* muxc; } ;
struct i2c_adapter {int mux_lock; struct i2c_mux_priv* algo_data; } ;
struct TYPE_2__ {struct i2c_adapter* parent; } ;


 int i2c_adapter_depth (struct i2c_adapter*) ;
 int i2c_lock_bus (struct i2c_adapter*,unsigned int) ;
 int rt_mutex_lock_nested (int *,int ) ;

__attribute__((used)) static void i2c_parent_lock_bus(struct i2c_adapter *adapter,
    unsigned int flags)
{
 struct i2c_mux_priv *priv = adapter->algo_data;
 struct i2c_adapter *parent = priv->muxc->parent;

 rt_mutex_lock_nested(&parent->mux_lock, i2c_adapter_depth(adapter));
 i2c_lock_bus(parent, flags);
}
