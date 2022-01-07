
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpio_mapping {int dummy; } ;
struct acpi_device {struct acpi_gpio_mapping const* driver_gpios; } ;


 int EINVAL ;

int acpi_dev_add_driver_gpios(struct acpi_device *adev,
         const struct acpi_gpio_mapping *gpios)
{
 if (adev && gpios) {
  adev->driver_gpios = gpios;
  return 0;
 }
 return -EINVAL;
}
