
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {scalar_t__ driver_gpios; } ;


 scalar_t__ acpi_dev_has_props (struct acpi_device*) ;

__attribute__((used)) static bool acpi_can_fallback_to_crs(struct acpi_device *adev,
         const char *con_id)
{

 if (acpi_dev_has_props(adev) || adev->driver_gpios)
  return 0;

 return con_id == ((void*)0);
}
