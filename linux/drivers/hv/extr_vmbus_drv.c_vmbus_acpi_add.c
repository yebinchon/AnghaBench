
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; struct acpi_device* parent; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int METHOD_NAME__CRS ;
 int acpi_walk_resources (int ,int ,int ,int *) ;
 int complete (int *) ;
 struct acpi_device* hv_acpi_dev ;
 scalar_t__ hyperv_mmio ;
 int probe_event ;
 int vmbus_acpi_remove (struct acpi_device*) ;
 int vmbus_reserve_fb () ;
 int vmbus_walk_resources ;

__attribute__((used)) static int vmbus_acpi_add(struct acpi_device *device)
{
 acpi_status result;
 int ret_val = -ENODEV;
 struct acpi_device *ancestor;

 hv_acpi_dev = device;

 result = acpi_walk_resources(device->handle, METHOD_NAME__CRS,
     vmbus_walk_resources, ((void*)0));

 if (ACPI_FAILURE(result))
  goto acpi_walk_err;




 for (ancestor = device->parent; ancestor; ancestor = ancestor->parent) {
  result = acpi_walk_resources(ancestor->handle, METHOD_NAME__CRS,
          vmbus_walk_resources, ((void*)0));

  if (ACPI_FAILURE(result))
   continue;
  if (hyperv_mmio) {
   vmbus_reserve_fb();
   break;
  }
 }
 ret_val = 0;

acpi_walk_err:
 complete(&probe_event);
 if (ret_val)
  vmbus_acpi_remove(device);
 return ret_val;
}
