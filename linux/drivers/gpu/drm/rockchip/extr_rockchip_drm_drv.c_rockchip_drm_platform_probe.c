
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct component_match {int dummy; } ;


 scalar_t__ IS_ERR (struct component_match*) ;
 int PTR_ERR (struct component_match*) ;
 int component_master_add_with_match (struct device*,int *,struct component_match*) ;
 struct component_match* rockchip_drm_match_add (struct device*) ;
 int rockchip_drm_match_remove (struct device*) ;
 int rockchip_drm_ops ;
 int rockchip_drm_platform_of_probe (struct device*) ;

__attribute__((used)) static int rockchip_drm_platform_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct component_match *match = ((void*)0);
 int ret;

 ret = rockchip_drm_platform_of_probe(dev);
 if (ret)
  return ret;

 match = rockchip_drm_match_add(dev);
 if (IS_ERR(match))
  return PTR_ERR(match);

 ret = component_master_add_with_match(dev, &rockchip_drm_ops, match);
 if (ret < 0) {
  rockchip_drm_match_remove(dev);
  return ret;
 }

 return 0;
}
