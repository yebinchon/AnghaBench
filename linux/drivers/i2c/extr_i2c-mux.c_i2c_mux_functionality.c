
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i2c_mux_priv {TYPE_1__* muxc; } ;
struct i2c_adapter {TYPE_2__* algo; struct i2c_mux_priv* algo_data; } ;
struct TYPE_4__ {int (* functionality ) (struct i2c_adapter*) ;} ;
struct TYPE_3__ {struct i2c_adapter* parent; } ;


 int stub1 (struct i2c_adapter*) ;

__attribute__((used)) static u32 i2c_mux_functionality(struct i2c_adapter *adap)
{
 struct i2c_mux_priv *priv = adap->algo_data;
 struct i2c_adapter *parent = priv->muxc->parent;

 return parent->algo->functionality(parent);
}
