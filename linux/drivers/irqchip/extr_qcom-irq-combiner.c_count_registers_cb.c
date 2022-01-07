
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource {scalar_t__ type; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_RESOURCE_TYPE_GENERIC_REGISTER ;
 int AE_OK ;

__attribute__((used)) static acpi_status count_registers_cb(struct acpi_resource *ares, void *context)
{
 int *count = context;

 if (ares->type == ACPI_RESOURCE_TYPE_GENERIC_REGISTER)
  ++(*count);
 return AE_OK;
}
