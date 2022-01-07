
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct component_match {int dummy; } ;


 int ENXIO ;
 int component_master_add_with_match (TYPE_1__*,int *,struct component_match*) ;
 int dev_err (TYPE_1__*,char*) ;
 int tilcdc_comp_ops ;
 int tilcdc_driver ;
 int tilcdc_get_external_components (TYPE_1__*,struct component_match**) ;
 int tilcdc_init (int *,TYPE_1__*) ;

__attribute__((used)) static int tilcdc_pdev_probe(struct platform_device *pdev)
{
 struct component_match *match = ((void*)0);
 int ret;


 if (!pdev->dev.of_node) {
  dev_err(&pdev->dev, "device-tree data is missing\n");
  return -ENXIO;
 }

 ret = tilcdc_get_external_components(&pdev->dev, &match);
 if (ret < 0)
  return ret;
 else if (ret == 0)
  return tilcdc_init(&tilcdc_driver, &pdev->dev);
 else
  return component_master_add_with_match(&pdev->dev,
             &tilcdc_comp_ops,
             match);
}
