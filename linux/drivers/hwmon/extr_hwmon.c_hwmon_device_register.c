
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct device* __hwmon_device_register (struct device*,int *,int *,int *,int *) ;
 int dev_warn (struct device*,char*) ;

struct device *hwmon_device_register(struct device *dev)
{
 dev_warn(dev,
   "hwmon_device_register() is deprecated. Please convert the driver to use hwmon_device_register_with_info().\n");

 return __hwmon_device_register(dev, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
