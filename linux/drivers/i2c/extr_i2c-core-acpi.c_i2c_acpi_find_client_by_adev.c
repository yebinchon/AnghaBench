
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct device* bus_find_device_by_acpi_dev (int *,struct acpi_device*) ;
 int i2c_bus_type ;
 struct i2c_client* i2c_verify_client (struct device*) ;

__attribute__((used)) static struct i2c_client *i2c_acpi_find_client_by_adev(struct acpi_device *adev)
{
 struct device *dev;

 dev = bus_find_device_by_acpi_dev(&i2c_bus_type, adev);
 return dev ? i2c_verify_client(dev) : ((void*)0);
}
