
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ rmi_function_match (struct device*,struct device_driver*) ;
 int rmi_is_physical_device (struct device*) ;
 int rmi_is_physical_driver (struct device_driver*) ;

__attribute__((used)) static int rmi_bus_match(struct device *dev, struct device_driver *drv)
{
 bool physical = rmi_is_physical_device(dev);


 if (physical != rmi_is_physical_driver(drv))
  return 0;

 return physical || rmi_function_match(dev, drv);
}
