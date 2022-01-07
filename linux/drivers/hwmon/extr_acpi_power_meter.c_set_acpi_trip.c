
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_power_meter_resource {scalar_t__* trip; TYPE_2__* acpi_dev; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef int acpi_status ;
struct TYPE_4__ {int handle; } ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_INFO ;
 int EINVAL ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static int set_acpi_trip(struct acpi_power_meter_resource *resource)
{
 union acpi_object arg_objs[] = {
  {ACPI_TYPE_INTEGER},
  {ACPI_TYPE_INTEGER}
 };
 struct acpi_object_list args = { 2, arg_objs };
 unsigned long long data;
 acpi_status status;


 if (resource->trip[0] < 0 || resource->trip[1] < 0)
  return 0;


 arg_objs[0].integer.value = resource->trip[1];
 arg_objs[1].integer.value = resource->trip[0];

 status = acpi_evaluate_integer(resource->acpi_dev->handle, "_PTP",
           &args, &data);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _PTP"));
  return -EINVAL;
 }


 if (data)
  return -EINVAL;

 return 0;
}
