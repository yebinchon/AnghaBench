
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;


 int ENODEV ;
 int component_master_add_with_match (TYPE_1__*,int *,struct component_match*) ;
 int drm_of_component_match_add (TYPE_1__*,struct component_match**,int ,struct device_node*) ;
 int malidp_compare_dev ;
 int malidp_master_ops ;
 struct device_node* of_graph_get_remote_node (int ,int ,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int malidp_platform_probe(struct platform_device *pdev)
{
 struct device_node *port;
 struct component_match *match = ((void*)0);

 if (!pdev->dev.of_node)
  return -ENODEV;


 port = of_graph_get_remote_node(pdev->dev.of_node, 0, 0);
 if (!port)
  return -ENODEV;

 drm_of_component_match_add(&pdev->dev, &match, malidp_compare_dev,
       port);
 of_node_put(port);
 return component_master_add_with_match(&pdev->dev, &malidp_master_ops,
            match);
}
