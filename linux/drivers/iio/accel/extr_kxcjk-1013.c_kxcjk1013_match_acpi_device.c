
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct acpi_device_id {scalar_t__ driver_data; int id; } ;
typedef enum kx_chipset { ____Placeholder_kx_chipset } kx_chipset ;
struct TYPE_2__ {int acpi_match_table; } ;


 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 char const* dev_name (struct device*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static const char *kxcjk1013_match_acpi_device(struct device *dev,
            enum kx_chipset *chipset,
            bool *is_smo8500_device)
{
 const struct acpi_device_id *id;

 id = acpi_match_device(dev->driver->acpi_match_table, dev);
 if (!id)
  return ((void*)0);

 if (strcmp(id->id, "SMO8500") == 0)
  *is_smo8500_device = 1;

 *chipset = (enum kx_chipset)id->driver_data;

 return dev_name(dev);
}
