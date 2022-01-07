
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int * driver_gpios; } ;



void acpi_dev_remove_driver_gpios(struct acpi_device *adev)
{
 if (adev)
  adev->driver_gpios = ((void*)0);
}
