
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int compatible; } ;
struct dw_mipi_dsi_rockchip {TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; TYPE_1__* driver; } ;
struct TYPE_3__ {int of_match_table; } ;


 int EPROBE_DEFER ;
 struct device* ERR_PTR (int ) ;
 struct device_node* of_find_compatible_node (struct device_node*,int *,int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct device_node* of_graph_get_remote_node (struct device_node*,int,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_node_put (struct device_node*) ;
 int platform_device_put (struct platform_device*) ;
 struct dw_mipi_dsi_rockchip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct device
*dw_mipi_dsi_rockchip_find_second(struct dw_mipi_dsi_rockchip *dsi)
{
 const struct of_device_id *match;
 struct device_node *node = ((void*)0), *local;

 match = of_match_device(dsi->dev->driver->of_match_table, dsi->dev);

 local = of_graph_get_remote_node(dsi->dev->of_node, 1, 0);
 if (!local)
  return ((void*)0);

 while ((node = of_find_compatible_node(node, ((void*)0),
            match->compatible))) {
  struct device_node *remote;


  if (node == dsi->dev->of_node)
   continue;

  remote = of_graph_get_remote_node(node, 1, 0);
  if (!remote)
   continue;


  if (remote == local) {
   struct dw_mipi_dsi_rockchip *dsi2;
   struct platform_device *pdev;

   pdev = of_find_device_by_node(node);






   of_node_put(remote);
   of_node_put(node);
   of_node_put(local);

   if (!pdev)
    return ERR_PTR(-EPROBE_DEFER);

   dsi2 = platform_get_drvdata(pdev);
   if (!dsi2) {
    platform_device_put(pdev);
    return ERR_PTR(-EPROBE_DEFER);
   }

   return &pdev->dev;
  }

  of_node_put(remote);
 }

 of_node_put(local);

 return ((void*)0);
}
