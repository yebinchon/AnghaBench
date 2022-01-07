
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int dummy; } ;
struct fw_driver {int (* update ) (struct fw_unit*) ;} ;
struct device {scalar_t__ driver; } ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 struct fw_unit* fw_unit (struct device*) ;
 scalar_t__ is_fw_unit (struct device*) ;
 int stub1 (struct fw_unit*) ;

__attribute__((used)) static int update_unit(struct device *dev, void *data)
{
 struct fw_unit *unit = fw_unit(dev);
 struct fw_driver *driver = (struct fw_driver *)dev->driver;

 if (is_fw_unit(dev) && driver != ((void*)0) && driver->update != ((void*)0)) {
  device_lock(dev);
  driver->update(unit);
  device_unlock(dev);
 }

 return 0;
}
