
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct component_match {int dummy; } ;


 int dev_match_of ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,struct device_node*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_graph_get_remote_node (int ,int ,int ) ;
 int of_node_put (struct device_node*) ;

int tilcdc_get_external_components(struct device *dev,
       struct component_match **match)
{
 struct device_node *node;

 node = of_graph_get_remote_node(dev->of_node, 0, 0);

 if (!of_device_is_compatible(node, "nxp,tda998x")) {
  of_node_put(node);
  return 0;
 }

 if (match)
  drm_of_component_match_add(dev, match, dev_match_of, node);
 of_node_put(node);
 return 1;
}
