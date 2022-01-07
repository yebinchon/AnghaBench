
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tfp410 {TYPE_1__* dev; int ddc; int * hpd; int connector_type; } ;
struct device_node {int fwnode; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int ENODEV ;
 int ENOENT ;
 int EPROBE_DEFER ;
 int GPIOD_IN ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_info (TYPE_1__*,char*) ;
 int * fwnode_get_named_gpiod (int *,char*,int ,int ,char*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_get_i2c_adapter_by_node (struct device_node*) ;
 struct device_node* of_graph_get_remote_node (int ,int,int) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static int tfp410_get_connector_properties(struct tfp410 *dvi)
{
 struct device_node *connector_node, *ddc_phandle;
 int ret = 0;


 connector_node = of_graph_get_remote_node(dvi->dev->of_node, 1, -1);
 if (!connector_node)
  return -ENODEV;

 if (of_device_is_compatible(connector_node, "hdmi-connector"))
  dvi->connector_type = DRM_MODE_CONNECTOR_HDMIA;
 else
  dvi->connector_type = DRM_MODE_CONNECTOR_DVID;

 dvi->hpd = fwnode_get_named_gpiod(&connector_node->fwnode,
     "hpd-gpios", 0, GPIOD_IN, "hpd");
 if (IS_ERR(dvi->hpd)) {
  ret = PTR_ERR(dvi->hpd);
  dvi->hpd = ((void*)0);
  if (ret == -ENOENT)
   ret = 0;
  else
   goto fail;
 }

 ddc_phandle = of_parse_phandle(connector_node, "ddc-i2c-bus", 0);
 if (!ddc_phandle)
  goto fail;

 dvi->ddc = of_get_i2c_adapter_by_node(ddc_phandle);
 if (dvi->ddc)
  dev_info(dvi->dev, "Connector's ddc i2c bus found\n");
 else
  ret = -EPROBE_DEFER;

 of_node_put(ddc_phandle);

fail:
 of_node_put(connector_node);
 return ret;
}
