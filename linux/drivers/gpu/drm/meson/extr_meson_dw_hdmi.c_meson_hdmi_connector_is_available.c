
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int of_node; } ;


 struct device_node* of_graph_get_endpoint_by_regs (int ,int,int ) ;
 struct device_node* of_graph_get_remote_port (struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static bool meson_hdmi_connector_is_available(struct device *dev)
{
 struct device_node *ep, *remote;


 ep = of_graph_get_endpoint_by_regs(dev->of_node, 1, 0);
 if (!ep)
  return 0;


 remote = of_graph_get_remote_port(ep);
 if (remote) {
  of_node_put(ep);
  return 1;
 }

 of_node_put(ep);
 of_node_put(remote);

 return 0;
}
