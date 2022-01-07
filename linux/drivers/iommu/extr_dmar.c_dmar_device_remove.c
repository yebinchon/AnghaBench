
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int dmar_device_hotplug (int ,int) ;

int dmar_device_remove(acpi_handle handle)
{
 return dmar_device_hotplug(handle, 0);
}
