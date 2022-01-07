
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_driver {int id_table; } ;
struct ipack_device_id {int dummy; } ;
struct ipack_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct ipack_device_id* ipack_match_id (int ,struct ipack_device*) ;
 struct ipack_device* to_ipack_dev (struct device*) ;
 struct ipack_driver* to_ipack_driver (struct device_driver*) ;

__attribute__((used)) static int ipack_bus_match(struct device *dev, struct device_driver *drv)
{
 struct ipack_device *idev = to_ipack_dev(dev);
 struct ipack_driver *idrv = to_ipack_driver(drv);
 const struct ipack_device_id *found_id;

 found_id = ipack_match_id(idrv->id_table, idev);
 return found_id ? 1 : 0;
}
