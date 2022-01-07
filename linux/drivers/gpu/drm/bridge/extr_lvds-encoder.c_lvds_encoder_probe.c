
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int * funcs; int of_node; } ;
struct lvds_encoder {TYPE_1__ bridge; struct drm_panel* panel_bridge; struct drm_panel* powerdown_gpio; } ;
struct drm_panel {int dummy; } ;
struct device_node {int dummy; } ;


 int DRM_MODE_CONNECTOR_LVDS ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct drm_panel*) ;
 int PTR_ERR (struct drm_panel*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 struct drm_panel* devm_drm_panel_bridge_add (struct device*,struct drm_panel*,int ) ;
 struct drm_panel* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct lvds_encoder* devm_kzalloc (struct device*,int,int ) ;
 int drm_bridge_add (TYPE_1__*) ;
 int funcs ;
 struct drm_panel* of_drm_find_panel (struct device_node*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 struct device_node* of_graph_get_port_by_id (int ,int) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct lvds_encoder*) ;

__attribute__((used)) static int lvds_encoder_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *port;
 struct device_node *endpoint;
 struct device_node *panel_node;
 struct drm_panel *panel;
 struct lvds_encoder *lvds_encoder;

 lvds_encoder = devm_kzalloc(dev, sizeof(*lvds_encoder), GFP_KERNEL);
 if (!lvds_encoder)
  return -ENOMEM;

 lvds_encoder->powerdown_gpio = devm_gpiod_get_optional(dev, "powerdown",
              GPIOD_OUT_HIGH);
 if (IS_ERR(lvds_encoder->powerdown_gpio)) {
  int err = PTR_ERR(lvds_encoder->powerdown_gpio);

  if (err != -EPROBE_DEFER)
   dev_err(dev, "powerdown GPIO failure: %d\n", err);
  return err;
 }


 port = of_graph_get_port_by_id(dev->of_node, 1);
 if (!port) {
  dev_dbg(dev, "port 1 not found\n");
  return -ENXIO;
 }

 endpoint = of_get_child_by_name(port, "endpoint");
 of_node_put(port);
 if (!endpoint) {
  dev_dbg(dev, "no endpoint for port 1\n");
  return -ENXIO;
 }

 panel_node = of_graph_get_remote_port_parent(endpoint);
 of_node_put(endpoint);
 if (!panel_node) {
  dev_dbg(dev, "no remote endpoint for port 1\n");
  return -ENXIO;
 }

 panel = of_drm_find_panel(panel_node);
 of_node_put(panel_node);
 if (IS_ERR(panel)) {
  dev_dbg(dev, "panel not found, deferring probe\n");
  return PTR_ERR(panel);
 }

 lvds_encoder->panel_bridge =
  devm_drm_panel_bridge_add(dev, panel, DRM_MODE_CONNECTOR_LVDS);
 if (IS_ERR(lvds_encoder->panel_bridge))
  return PTR_ERR(lvds_encoder->panel_bridge);





 lvds_encoder->bridge.of_node = dev->of_node;
 lvds_encoder->bridge.funcs = &funcs;
 drm_bridge_add(&lvds_encoder->bridge);

 platform_set_drvdata(pdev, lvds_encoder);

 return 0;
}
