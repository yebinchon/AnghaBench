
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int fwnode; } ;


 int acpi_coresight_get_cpu (struct device*) ;
 scalar_t__ is_acpi_device_node (int ) ;
 scalar_t__ is_of_node (int ) ;
 int of_coresight_get_cpu (struct device*) ;

int coresight_get_cpu(struct device *dev)
{
 if (is_of_node(dev->fwnode))
  return of_coresight_get_cpu(dev);
 else if (is_acpi_device_node(dev->fwnode))
  return acpi_coresight_get_cpu(dev);
 return 0;
}
