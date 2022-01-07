
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_meter_resource {int model_number; } ;
typedef int acpi_string ;


 int kfree (int ) ;

__attribute__((used)) static void free_capabilities(struct acpi_power_meter_resource *resource)
{
 acpi_string *str;
 int i;

 str = &resource->model_number;
 for (i = 0; i < 3; i++, str++)
  kfree(*str);
}
