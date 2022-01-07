
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef enum inv_devices { ____Placeholder_inv_devices } inv_devices ;
struct TYPE_2__ {int acpi_match_table; } ;


 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 char const* dev_name (struct device*) ;

__attribute__((used)) static const char *inv_mpu_match_acpi_device(struct device *dev,
          enum inv_devices *chip_id)
{
 const struct acpi_device_id *id;

 id = acpi_match_device(dev->driver->acpi_match_table, dev);
 if (!id)
  return ((void*)0);

 *chip_id = (int)id->driver_data;

 return dev_name(dev);
}
