
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_driver {struct fsi_device_id* id_table; } ;
struct fsi_device_id {scalar_t__ engine_type; scalar_t__ version; } ;
struct fsi_device {scalar_t__ engine_type; scalar_t__ version; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ FSI_VERSION_ANY ;
 struct fsi_device* to_fsi_dev (struct device*) ;
 struct fsi_driver* to_fsi_drv (struct device_driver*) ;

__attribute__((used)) static int fsi_bus_match(struct device *dev, struct device_driver *drv)
{
 struct fsi_device *fsi_dev = to_fsi_dev(dev);
 struct fsi_driver *fsi_drv = to_fsi_drv(drv);
 const struct fsi_device_id *id;

 if (!fsi_drv->id_table)
  return 0;

 for (id = fsi_drv->id_table; id->engine_type; id++) {
  if (id->engine_type != fsi_dev->engine_type)
   continue;
  if (id->version == FSI_VERSION_ANY ||
    id->version == fsi_dev->version)
   return 1;
 }

 return 0;
}
