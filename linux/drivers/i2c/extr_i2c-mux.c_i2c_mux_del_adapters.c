
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symlink_name ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;
struct i2c_mux_priv {int chan_id; TYPE_4__ adap; } ;
struct i2c_mux_core {int num_adapters; TYPE_2__* dev; struct i2c_adapter** adapter; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct i2c_adapter {TYPE_1__ dev; struct i2c_mux_priv* algo_data; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int kobj; } ;


 int i2c_del_adapter (struct i2c_adapter*) ;
 int kfree (struct i2c_mux_priv*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (char*,int,char*,int) ;
 int sysfs_remove_link (int *,char*) ;

void i2c_mux_del_adapters(struct i2c_mux_core *muxc)
{
 char symlink_name[20];

 while (muxc->num_adapters) {
  struct i2c_adapter *adap = muxc->adapter[--muxc->num_adapters];
  struct i2c_mux_priv *priv = adap->algo_data;
  struct device_node *np = adap->dev.of_node;

  muxc->adapter[muxc->num_adapters] = ((void*)0);

  snprintf(symlink_name, sizeof(symlink_name),
    "channel-%u", priv->chan_id);
  sysfs_remove_link(&muxc->dev->kobj, symlink_name);

  sysfs_remove_link(&priv->adap.dev.kobj, "mux_device");
  i2c_del_adapter(adap);
  of_node_put(np);
  kfree(priv);
 }
}
