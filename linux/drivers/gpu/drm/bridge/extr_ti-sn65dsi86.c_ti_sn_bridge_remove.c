
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int bridge; scalar_t__ dsi; int dev; int host_node; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int drm_bridge_remove (int *) ;
 struct ti_sn_bridge* i2c_get_clientdata (struct i2c_client*) ;
 int mipi_dsi_detach (scalar_t__) ;
 int mipi_dsi_device_unregister (scalar_t__) ;
 int of_node_put (int ) ;
 int pm_runtime_disable (int ) ;
 int ti_sn_debugfs_remove (struct ti_sn_bridge*) ;

__attribute__((used)) static int ti_sn_bridge_remove(struct i2c_client *client)
{
 struct ti_sn_bridge *pdata = i2c_get_clientdata(client);

 if (!pdata)
  return -EINVAL;

 ti_sn_debugfs_remove(pdata);

 of_node_put(pdata->host_node);

 pm_runtime_disable(pdata->dev);

 if (pdata->dsi) {
  mipi_dsi_detach(pdata->dsi);
  mipi_dsi_device_unregister(pdata->dsi);
 }

 drm_bridge_remove(&pdata->bridge);

 return 0;
}
