
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_driver {int id_table; } ;
struct i3c_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int * type; } ;


 struct i3c_device* dev_to_i3cdev (struct device*) ;
 struct i3c_driver* drv_to_i3cdrv (struct device_driver*) ;
 scalar_t__ i3c_device_match_id (struct i3c_device*,int ) ;
 int i3c_device_type ;

__attribute__((used)) static int i3c_device_match(struct device *dev, struct device_driver *drv)
{
 struct i3c_device *i3cdev;
 struct i3c_driver *i3cdrv;

 if (dev->type != &i3c_device_type)
  return 0;

 i3cdev = dev_to_i3cdev(dev);
 i3cdrv = drv_to_i3cdrv(drv);
 if (i3c_device_match_id(i3cdev, i3cdrv->id_table))
  return 1;

 return 0;
}
