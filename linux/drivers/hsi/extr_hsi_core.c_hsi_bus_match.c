
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int name; } ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 scalar_t__ of_driver_match_device (struct device*,struct device_driver*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int hsi_bus_match(struct device *dev, struct device_driver *driver)
{
 if (of_driver_match_device(dev, driver))
  return 1;

 if (strcmp(dev_name(dev), driver->name) == 0)
  return 1;

 return 0;
}
