
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct i2c_mux_priv {int chan_id; struct i2c_mux_core* muxc; } ;
struct i2c_mux_core {int (* select ) (struct i2c_mux_core*,int ) ;int (* deselect ) (struct i2c_mux_core*,int ) ;struct i2c_adapter* parent; } ;
struct i2c_adapter {struct i2c_mux_priv* algo_data; } ;


 int __i2c_smbus_xfer (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;
 int stub1 (struct i2c_mux_core*,int ) ;
 int stub2 (struct i2c_mux_core*,int ) ;

__attribute__((used)) static int __i2c_mux_smbus_xfer(struct i2c_adapter *adap,
    u16 addr, unsigned short flags,
    char read_write, u8 command,
    int size, union i2c_smbus_data *data)
{
 struct i2c_mux_priv *priv = adap->algo_data;
 struct i2c_mux_core *muxc = priv->muxc;
 struct i2c_adapter *parent = muxc->parent;
 int ret;



 ret = muxc->select(muxc, priv->chan_id);
 if (ret >= 0)
  ret = __i2c_smbus_xfer(parent, addr, flags,
           read_write, command, size, data);
 if (muxc->deselect)
  muxc->deselect(muxc, priv->chan_id);

 return ret;
}
