
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mode; int * name; } ;
struct TYPE_10__ {TYPE_2__ attr; int store; int show; } ;
struct sensor_device_attribute {TYPE_5__ dev_attr; int index; } ;
struct device {int dummy; } ;
struct aem_rw_sensor_template {int index; int set; int show; int * label; } ;
struct aem_ro_sensor_template {int index; int show; int * label; } ;
struct aem_data {struct sensor_device_attribute* sensors; TYPE_1__* pdev; } ;
struct TYPE_9__ {TYPE_5__ dev_attr; } ;
struct TYPE_8__ {TYPE_5__ dev_attr; } ;
struct TYPE_6__ {struct device dev; } ;


 int aem_remove_sensors (struct aem_data*) ;
 int device_create_file (struct device*,TYPE_5__*) ;
 TYPE_4__ sensor_dev_attr_name ;
 TYPE_3__ sensor_dev_attr_version ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int aem_register_sensors(struct aem_data *data,
    const struct aem_ro_sensor_template *ro,
    const struct aem_rw_sensor_template *rw)
{
 struct device *dev = &data->pdev->dev;
 struct sensor_device_attribute *sensors = data->sensors;
 int err;


 while (ro->label) {
  sysfs_attr_init(&sensors->dev_attr.attr);
  sensors->dev_attr.attr.name = ro->label;
  sensors->dev_attr.attr.mode = 0444;
  sensors->dev_attr.show = ro->show;
  sensors->index = ro->index;

  err = device_create_file(dev, &sensors->dev_attr);
  if (err) {
   sensors->dev_attr.attr.name = ((void*)0);
   goto error;
  }
  sensors++;
  ro++;
 }


 while (rw->label) {
  sysfs_attr_init(&sensors->dev_attr.attr);
  sensors->dev_attr.attr.name = rw->label;
  sensors->dev_attr.attr.mode = 0644;
  sensors->dev_attr.show = rw->show;
  sensors->dev_attr.store = rw->set;
  sensors->index = rw->index;

  err = device_create_file(dev, &sensors->dev_attr);
  if (err) {
   sensors->dev_attr.attr.name = ((void*)0);
   goto error;
  }
  sensors++;
  rw++;
 }

 err = device_create_file(dev, &sensor_dev_attr_name.dev_attr);
 if (err)
  goto error;
 err = device_create_file(dev, &sensor_dev_attr_version.dev_attr);
 return err;

error:
 aem_remove_sensors(data);
 return err;
}
