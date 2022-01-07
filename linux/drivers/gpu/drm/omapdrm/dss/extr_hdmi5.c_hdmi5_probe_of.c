
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_hdmi {int phy; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;


 int hdmi_parse_lanes_of (struct platform_device*,struct device_node*,int *) ;
 struct device_node* of_graph_get_endpoint_by_regs (struct device_node*,int ,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int hdmi5_probe_of(struct omap_hdmi *hdmi)
{
 struct platform_device *pdev = hdmi->pdev;
 struct device_node *node = pdev->dev.of_node;
 struct device_node *ep;
 int r;

 ep = of_graph_get_endpoint_by_regs(node, 0, 0);
 if (!ep)
  return 0;

 r = hdmi_parse_lanes_of(pdev, ep, &hdmi->phy);
 of_node_put(ep);
 return r;
}
