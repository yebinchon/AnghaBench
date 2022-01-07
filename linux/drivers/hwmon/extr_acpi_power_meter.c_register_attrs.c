
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sensor_template {scalar_t__ set; int index; int show; int * label; } ;
struct TYPE_5__ {int mode; int * name; } ;
struct TYPE_6__ {TYPE_2__ attr; scalar_t__ store; int show; } ;
struct sensor_device_attribute {TYPE_3__ dev_attr; int index; } ;
struct device {int dummy; } ;
struct acpi_power_meter_resource {size_t num_sensors; struct sensor_device_attribute* sensors; TYPE_1__* acpi_dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int device_create_file (struct device*,TYPE_3__*) ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int register_attrs(struct acpi_power_meter_resource *resource,
     struct sensor_template *attrs)
{
 struct device *dev = &resource->acpi_dev->dev;
 struct sensor_device_attribute *sensors =
  &resource->sensors[resource->num_sensors];
 int res = 0;

 while (attrs->label) {
  sensors->dev_attr.attr.name = attrs->label;
  sensors->dev_attr.attr.mode = 0444;
  sensors->dev_attr.show = attrs->show;
  sensors->index = attrs->index;

  if (attrs->set) {
   sensors->dev_attr.attr.mode |= 0200;
   sensors->dev_attr.store = attrs->set;
  }

  sysfs_attr_init(&sensors->dev_attr.attr);
  res = device_create_file(dev, &sensors->dev_attr);
  if (res) {
   sensors->dev_attr.attr.name = ((void*)0);
   goto error;
  }
  sensors++;
  resource->num_sensors++;
  attrs++;
 }

error:
 return res;
}
