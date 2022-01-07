
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 struct omap_dss_device* ERR_PTR (int ) ;
 struct device_node* of_graph_get_remote_node (struct device_node*,unsigned int,int ) ;
 int of_node_put (struct device_node*) ;
 struct omap_dss_device* omapdss_find_device_by_node (struct device_node*) ;

struct omap_dss_device *
omapdss_of_find_connected_device(struct device_node *node, unsigned int port)
{
 struct device_node *remote_node;
 struct omap_dss_device *dssdev;

 remote_node = of_graph_get_remote_node(node, port, 0);
 if (!remote_node)
  return ((void*)0);

 dssdev = omapdss_find_device_by_node(remote_node);
 of_node_put(remote_node);

 return dssdev ? dssdev : ERR_PTR(-EPROBE_DEFER);
}
