
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;


 int ENODEV ;
 int compare_of ;
 int component_master_add_with_match (struct device*,int *,struct component_match*) ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,struct device_node*) ;
 int kirin_drm_ops ;
 struct device_node* of_graph_get_remote_node (struct device_node*,int ,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int kirin_drm_platform_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct component_match *match = ((void*)0);
 struct device_node *remote;

 remote = of_graph_get_remote_node(np, 0, 0);
 if (!remote)
  return -ENODEV;

 drm_of_component_match_add(dev, &match, compare_of, remote);
 of_node_put(remote);

 return component_master_add_with_match(dev, &kirin_drm_ops, match);
}
