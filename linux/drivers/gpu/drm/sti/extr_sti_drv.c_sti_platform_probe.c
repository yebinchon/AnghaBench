
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int compare_of ;
 int component_master_add_with_match (struct device*,int *,struct component_match*) ;
 int devm_of_platform_populate (struct device*) ;
 int dma_set_coherent_mask (struct device*,int ) ;
 int drm_of_component_match_add (struct device*,struct component_match**,int ,struct device_node*) ;
 struct device_node* of_get_next_available_child (struct device_node*,struct device_node*) ;
 int sti_ops ;

__attribute__((used)) static int sti_platform_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct device_node *child_np;
 struct component_match *match = ((void*)0);

 dma_set_coherent_mask(dev, DMA_BIT_MASK(32));

 devm_of_platform_populate(dev);

 child_np = of_get_next_available_child(node, ((void*)0));

 while (child_np) {
  drm_of_component_match_add(dev, &match, compare_of,
        child_np);
  child_np = of_get_next_available_child(node, child_np);
 }

 return component_master_add_with_match(dev, &sti_ops, match);
}
