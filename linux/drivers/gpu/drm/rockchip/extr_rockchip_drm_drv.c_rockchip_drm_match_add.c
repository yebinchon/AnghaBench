
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int driver; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int DL_FLAG_STATELESS ;
 int ENODEV ;
 struct component_match* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct component_match*) ;
 int compare_dev ;
 int component_match_add (struct device*,struct component_match**,int ,struct device*) ;
 int device_link_add (struct device*,struct device*,int ) ;
 int num_rockchip_sub_drivers ;
 struct device* platform_find_device_by_driver (struct device*,int *) ;
 int put_device (struct device*) ;
 int rockchip_drm_match_remove (struct device*) ;
 struct platform_driver** rockchip_sub_drivers ;

__attribute__((used)) static struct component_match *rockchip_drm_match_add(struct device *dev)
{
 struct component_match *match = ((void*)0);
 int i;

 for (i = 0; i < num_rockchip_sub_drivers; i++) {
  struct platform_driver *drv = rockchip_sub_drivers[i];
  struct device *p = ((void*)0), *d;

  do {
   d = platform_find_device_by_driver(p, &drv->driver);
   put_device(p);
   p = d;

   if (!d)
    break;

   device_link_add(dev, d, DL_FLAG_STATELESS);
   component_match_add(dev, &match, compare_dev, d);
  } while (1);
 }

 if (IS_ERR(match))
  rockchip_drm_match_remove(dev);

 return match ?: ERR_PTR(-ENODEV);
}
