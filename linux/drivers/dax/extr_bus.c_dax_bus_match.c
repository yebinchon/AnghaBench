
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct dax_device_driver {scalar_t__ match_always; } ;


 int dax_match_id (struct dax_device_driver*,struct device*) ;
 struct dax_device_driver* to_dax_drv (struct device_driver*) ;

__attribute__((used)) static int dax_bus_match(struct device *dev, struct device_driver *drv)
{
 struct dax_device_driver *dax_drv = to_dax_drv(drv);





 if (dax_drv->match_always)
  return 1;

 return dax_match_id(dax_drv, dev);
}
