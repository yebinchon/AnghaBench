
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_demux_pinctrl_priv {int cur_chan; TYPE_1__* chan; int cur_adap; } ;
struct TYPE_2__ {int * parent_adap; int chgset; } ;


 int EINVAL ;
 int i2c_del_adapter (int *) ;
 int i2c_put_adapter (int *) ;
 int of_changeset_revert (int *) ;

__attribute__((used)) static int i2c_demux_deactivate_master(struct i2c_demux_pinctrl_priv *priv)
{
 int ret, cur = priv->cur_chan;

 if (cur < 0)
  return 0;

 i2c_del_adapter(&priv->cur_adap);
 i2c_put_adapter(priv->chan[cur].parent_adap);

 ret = of_changeset_revert(&priv->chan[cur].chgset);

 priv->chan[cur].parent_adap = ((void*)0);
 priv->cur_chan = -EINVAL;

 return ret;
}
