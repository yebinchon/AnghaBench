
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_driver* driver; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device_driver {int dummy; } ;


 int ENODEV ;
 int num_rockchip_sub_drivers ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct device_node* of_graph_get_remote_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int platform_device_put (struct platform_device*) ;
 scalar_t__* rockchip_sub_drivers ;
 scalar_t__ to_platform_driver (struct device_driver*) ;

int rockchip_drm_endpoint_is_subdriver(struct device_node *ep)
{
 struct device_node *node = of_graph_get_remote_port_parent(ep);
 struct platform_device *pdev;
 struct device_driver *drv;
 int i;

 if (!node)
  return -ENODEV;


 pdev = of_find_device_by_node(node);
 of_node_put(node);
 if (!pdev)
  return -ENODEV;





 drv = pdev->dev.driver;
 if (!drv) {
  platform_device_put(pdev);
  return 0;
 }

 for (i = 0; i < num_rockchip_sub_drivers; i++) {
  if (rockchip_sub_drivers[i] == to_platform_driver(drv)) {
   platform_device_put(pdev);
   return 1;
  }
 }

 platform_device_put(pdev);
 return 0;
}
