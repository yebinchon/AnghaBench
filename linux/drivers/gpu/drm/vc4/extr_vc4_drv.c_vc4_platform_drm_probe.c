
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct component_match {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int component_drivers ;
 int component_master_add_with_match (struct device*,int *,struct component_match*) ;
 int vc4_drm_ops ;
 int vc4_match_add_drivers (struct device*,struct component_match**,int ,int ) ;

__attribute__((used)) static int vc4_platform_drm_probe(struct platform_device *pdev)
{
 struct component_match *match = ((void*)0);
 struct device *dev = &pdev->dev;

 vc4_match_add_drivers(dev, &match,
         component_drivers, ARRAY_SIZE(component_drivers));

 return component_master_add_with_match(dev, &vc4_drm_ops, match);
}
