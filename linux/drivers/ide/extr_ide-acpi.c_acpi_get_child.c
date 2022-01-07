
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct acpi_device {int * handle; } ;
typedef int * acpi_handle ;


 scalar_t__ acpi_bus_get_device (int *,struct acpi_device**) ;
 struct acpi_device* acpi_find_child_device (struct acpi_device*,int ,int) ;

__attribute__((used)) static acpi_handle acpi_get_child(acpi_handle handle, u64 addr)
{
 struct acpi_device *adev;

 if (!handle || acpi_bus_get_device(handle, &adev))
  return ((void*)0);

 adev = acpi_find_child_device(adev, addr, 0);
 return adev ? adev->handle : ((void*)0);
}
