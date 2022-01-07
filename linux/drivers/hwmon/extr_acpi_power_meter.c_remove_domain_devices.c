
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_power_meter_resource {int num_domain_devices; int holders_dir; struct acpi_device** domain_devices; } ;
struct TYPE_2__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int kfree (struct acpi_device**) ;
 int kobject_name (int *) ;
 int kobject_put (int ) ;
 int put_device (TYPE_1__*) ;
 int sysfs_remove_link (int ,int ) ;

__attribute__((used)) static void remove_domain_devices(struct acpi_power_meter_resource *resource)
{
 int i;

 if (!resource->num_domain_devices)
  return;

 for (i = 0; i < resource->num_domain_devices; i++) {
  struct acpi_device *obj = resource->domain_devices[i];
  if (!obj)
   continue;

  sysfs_remove_link(resource->holders_dir,
      kobject_name(&obj->dev.kobj));
  put_device(&obj->dev);
 }

 kfree(resource->domain_devices);
 kobject_put(resource->holders_dir);
 resource->num_domain_devices = 0;
}
