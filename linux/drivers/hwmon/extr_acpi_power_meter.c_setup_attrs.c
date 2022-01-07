
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; scalar_t__ configurable_cap; } ;
struct acpi_power_meter_resource {TYPE_2__ caps; TYPE_1__* acpi_dev; } ;
struct TYPE_3__ {int dev; } ;


 int POWER_METER_CAN_CAP ;
 int POWER_METER_CAN_MEASURE ;
 int POWER_METER_CAN_TRIP ;
 int can_cap_in_hardware () ;
 int dev_warn (int *,char*) ;
 int meter_attrs ;
 int misc_attrs ;
 int misc_cap_attrs ;
 int read_domain_devices (struct acpi_power_meter_resource*) ;
 int register_attrs (struct acpi_power_meter_resource*,int ) ;
 int remove_attrs (struct acpi_power_meter_resource*) ;
 int ro_cap_attrs ;
 int rw_cap_attrs ;
 int trip_attrs ;

__attribute__((used)) static int setup_attrs(struct acpi_power_meter_resource *resource)
{
 int res = 0;

 res = read_domain_devices(resource);
 if (res)
  return res;

 if (resource->caps.flags & POWER_METER_CAN_MEASURE) {
  res = register_attrs(resource, meter_attrs);
  if (res)
   goto error;
 }

 if (resource->caps.flags & POWER_METER_CAN_CAP) {
  if (!can_cap_in_hardware()) {
   dev_warn(&resource->acpi_dev->dev,
     "Ignoring unsafe software power cap!\n");
   goto skip_unsafe_cap;
  }

  if (resource->caps.configurable_cap)
   res = register_attrs(resource, rw_cap_attrs);
  else
   res = register_attrs(resource, ro_cap_attrs);

  if (res)
   goto error;

  res = register_attrs(resource, misc_cap_attrs);
  if (res)
   goto error;
 }

skip_unsafe_cap:
 if (resource->caps.flags & POWER_METER_CAN_TRIP) {
  res = register_attrs(resource, trip_attrs);
  if (res)
   goto error;
 }

 res = register_attrs(resource, misc_attrs);
 if (res)
  goto error;

 return res;
error:
 remove_attrs(resource);
 return res;
}
