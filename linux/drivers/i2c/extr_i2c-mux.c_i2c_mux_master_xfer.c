
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_mux_priv {int chan_id; struct i2c_mux_core* muxc; } ;
struct i2c_mux_core {int (* select ) (struct i2c_mux_core*,int ) ;int (* deselect ) (struct i2c_mux_core*,int ) ;struct i2c_adapter* parent; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct i2c_mux_priv* algo_data; } ;


 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int stub1 (struct i2c_mux_core*,int ) ;
 int stub2 (struct i2c_mux_core*,int ) ;

__attribute__((used)) static int i2c_mux_master_xfer(struct i2c_adapter *adap,
          struct i2c_msg msgs[], int num)
{
 struct i2c_mux_priv *priv = adap->algo_data;
 struct i2c_mux_core *muxc = priv->muxc;
 struct i2c_adapter *parent = muxc->parent;
 int ret;



 ret = muxc->select(muxc, priv->chan_id);
 if (ret >= 0)
  ret = i2c_transfer(parent, msgs, num);
 if (muxc->deselect)
  muxc->deselect(muxc, priv->chan_id);

 return ret;
}
