
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct endpoint_list {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,struct device_node*) ;
 int compare_of ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,struct device_node*) ;
 scalar_t__ of_device_is_available (struct device_node*) ;
 scalar_t__ sun4i_drv_node_is_connector (struct device_node*) ;
 scalar_t__ sun4i_drv_node_is_deu (struct device_node*) ;
 scalar_t__ sun4i_drv_node_is_frontend (struct device_node*) ;
 scalar_t__ sun4i_drv_node_is_supported_frontend (struct device_node*) ;
 scalar_t__ sun4i_drv_node_is_tcon_top (struct device_node*) ;
 int sun4i_drv_traverse_endpoints (struct endpoint_list*,struct device_node*,int) ;

__attribute__((used)) static int sun4i_drv_add_endpoints(struct device *dev,
       struct endpoint_list *list,
       struct component_match **match,
       struct device_node *node)
{
 int count = 0;
 if (!sun4i_drv_node_is_frontend(node) &&
     !of_device_is_available(node))
  return 0;





 if (sun4i_drv_node_is_connector(node))
  return 0;






 if (!(sun4i_drv_node_is_frontend(node) ||
       sun4i_drv_node_is_deu(node)) ||
     (sun4i_drv_node_is_supported_frontend(node) &&
      of_device_is_available(node))) {

  DRM_DEBUG_DRIVER("Adding component %pOF\n", node);
  drm_of_component_match_add(dev, match, compare_of, node);
  count++;
 }


 sun4i_drv_traverse_endpoints(list, node, 1);


 if (sun4i_drv_node_is_tcon_top(node)) {
  sun4i_drv_traverse_endpoints(list, node, 3);
  sun4i_drv_traverse_endpoints(list, node, 5);
 }

 return count;
}
