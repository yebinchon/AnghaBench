
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_power_meter_resource {unsigned long long cap; TYPE_1__* acpi_dev; } ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int ENODEV ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int update_cap(struct acpi_power_meter_resource *resource)
{
 unsigned long long data;
 acpi_status status;

 status = acpi_evaluate_integer(resource->acpi_dev->handle, "_GHL",
           ((void*)0), &data);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _GHL"));
  return -ENODEV;
 }

 resource->cap = data;
 return 0;
}
