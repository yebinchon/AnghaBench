
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_power_meter_resource {int power; int lock; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct acpi_device* to_acpi_device (struct device*) ;
 int update_meter (struct acpi_power_meter_resource*) ;

__attribute__((used)) static ssize_t show_power(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_power_meter_resource *resource = acpi_dev->driver_data;

 mutex_lock(&resource->lock);
 update_meter(resource);
 mutex_unlock(&resource->lock);

 return sprintf(buf, "%llu\n", resource->power * 1000);
}
