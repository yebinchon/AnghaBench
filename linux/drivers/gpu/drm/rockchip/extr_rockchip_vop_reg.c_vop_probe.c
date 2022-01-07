
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENODEV ;
 int component_add (struct device*,int *) ;
 int vop_component_ops ;

__attribute__((used)) static int vop_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 if (!dev->of_node) {
  DRM_DEV_ERROR(dev, "can't find vop devices\n");
  return -ENODEV;
 }

 return component_add(dev, &vop_component_ops);
}
