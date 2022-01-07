
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int owner; int dev; } ;


 int * get_device (int ) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

struct omap_dss_device *omapdss_device_get(struct omap_dss_device *dssdev)
{
 if (!try_module_get(dssdev->owner))
  return ((void*)0);

 if (get_device(dssdev->dev) == ((void*)0)) {
  module_put(dssdev->owner);
  return ((void*)0);
 }

 return dssdev;
}
