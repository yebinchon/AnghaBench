
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_port {int id; int lanes; } ;
struct cdn_dp_device {int active; int ports; int lanes; struct cdn_dp_port** port; int dev; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int ENODEV ;
 int cdn_dp_clk_disable (struct cdn_dp_device*) ;
 int cdn_dp_clk_enable (struct cdn_dp_device*) ;
 struct cdn_dp_port* cdn_dp_connected_port (struct cdn_dp_device*) ;
 int cdn_dp_disable_phy (struct cdn_dp_device*,struct cdn_dp_port*) ;
 int cdn_dp_enable_phy (struct cdn_dp_device*,struct cdn_dp_port*) ;
 int cdn_dp_firmware_init (struct cdn_dp_device*) ;
 int cdn_dp_get_port_lanes (struct cdn_dp_port*) ;
 int cdn_dp_get_sink_capability (struct cdn_dp_device*) ;

__attribute__((used)) static int cdn_dp_enable(struct cdn_dp_device *dp)
{
 int ret, i, lanes;
 struct cdn_dp_port *port;

 port = cdn_dp_connected_port(dp);
 if (!port) {
  DRM_DEV_ERROR(dp->dev,
         "Can't enable without connection\n");
  return -ENODEV;
 }

 if (dp->active)
  return 0;

 ret = cdn_dp_clk_enable(dp);
 if (ret)
  return ret;

 ret = cdn_dp_firmware_init(dp);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "firmware init failed: %d", ret);
  goto err_clk_disable;
 }


 for (i = port->id; i < dp->ports; i++) {
  port = dp->port[i];
  lanes = cdn_dp_get_port_lanes(port);
  if (lanes) {
   ret = cdn_dp_enable_phy(dp, port);
   if (ret)
    continue;

   ret = cdn_dp_get_sink_capability(dp);
   if (ret) {
    cdn_dp_disable_phy(dp, port);
   } else {
    dp->active = 1;
    dp->lanes = port->lanes;
    return 0;
   }
  }
 }

err_clk_disable:
 cdn_dp_clk_disable(dp);
 return ret;
}
