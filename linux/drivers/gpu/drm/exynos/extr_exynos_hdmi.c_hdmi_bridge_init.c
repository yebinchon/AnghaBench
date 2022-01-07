
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int bridge; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int EINVAL ;
 int EPROBE_DEFER ;
 int of_drm_find_bridge (struct device_node*) ;
 struct device_node* of_graph_get_endpoint_by_regs (int ,int,int) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int hdmi_bridge_init(struct hdmi_context *hdata)
{
 struct device *dev = hdata->dev;
 struct device_node *ep, *np;

 ep = of_graph_get_endpoint_by_regs(dev->of_node, 1, -1);
 if (!ep)
  return 0;

 np = of_graph_get_remote_port_parent(ep);
 of_node_put(ep);
 if (!np) {
  DRM_DEV_ERROR(dev, "failed to get remote port parent");
  return -EINVAL;
 }

 hdata->bridge = of_drm_find_bridge(np);
 of_node_put(np);

 if (!hdata->bridge)
  return -EPROBE_DEFER;

 return 0;
}
