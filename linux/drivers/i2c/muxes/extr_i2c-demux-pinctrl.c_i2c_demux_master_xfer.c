
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int dummy; } ;
struct i2c_demux_pinctrl_priv {size_t cur_chan; TYPE_1__* chan; } ;
struct i2c_adapter {struct i2c_demux_pinctrl_priv* algo_data; } ;
struct TYPE_2__ {struct i2c_adapter* parent_adap; } ;


 int __i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int i2c_demux_master_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
 struct i2c_demux_pinctrl_priv *priv = adap->algo_data;
 struct i2c_adapter *parent = priv->chan[priv->cur_chan].parent_adap;

 return __i2c_transfer(parent, msgs, num);
}
