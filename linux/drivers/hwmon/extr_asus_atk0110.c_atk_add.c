
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pointer; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ string; TYPE_1__ package; } ;
struct atk_data {int disable_ec; scalar_t__ old_interface; int atk_handle; int sensor_list; struct acpi_device* acpi_dev; } ;
struct acpi_device {struct atk_data* driver_data; int dev; int handle; } ;
struct acpi_buffer {union acpi_object* pointer; int length; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_STRING ;
 scalar_t__ AE_OK ;
 int BOARD_ID ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ acpi_evaluate_object_typed (int ,int ,int *,struct acpi_buffer*,int ) ;
 int atk_debugfs_init (struct atk_data*) ;
 int atk_ec_ctl (struct atk_data*,int ) ;
 int atk_enumerate_new_hwmon (struct atk_data*) ;
 int atk_enumerate_old_hwmon (struct atk_data*) ;
 int atk_init_attribute_groups (struct atk_data*) ;
 int atk_probe_if (struct atk_data*) ;
 int atk_register_hwmon (struct atk_data*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 struct atk_data* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int atk_add(struct acpi_device *device)
{
 acpi_status ret;
 int err;
 struct acpi_buffer buf;
 union acpi_object *obj;
 struct atk_data *data;

 dev_dbg(&device->dev, "adding...\n");

 data = devm_kzalloc(&device->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->acpi_dev = device;
 data->atk_handle = device->handle;
 INIT_LIST_HEAD(&data->sensor_list);
 data->disable_ec = 0;

 buf.length = ACPI_ALLOCATE_BUFFER;
 ret = acpi_evaluate_object_typed(data->atk_handle, BOARD_ID, ((void*)0),
   &buf, ACPI_TYPE_PACKAGE);
 if (ret != AE_OK) {
  dev_dbg(&device->dev, "atk: method MBIF not found\n");
 } else {
  obj = buf.pointer;
  if (obj->package.count >= 2) {
   union acpi_object *id = &obj->package.elements[1];
   if (id->type == ACPI_TYPE_STRING)
    dev_dbg(&device->dev, "board ID = %s\n",
     id->string.pointer);
  }
  ACPI_FREE(buf.pointer);
 }

 err = atk_probe_if(data);
 if (err) {
  dev_err(&device->dev, "No usable hwmon interface detected\n");
  goto out;
 }

 if (data->old_interface) {
  dev_dbg(&device->dev, "Using old hwmon interface\n");
  err = atk_enumerate_old_hwmon(data);
 } else {
  dev_dbg(&device->dev, "Using new hwmon interface\n");
  err = atk_enumerate_new_hwmon(data);
 }
 if (err < 0)
  goto out;
 if (err == 0) {
  dev_info(&device->dev,
    "No usable sensor detected, bailing out\n");
  err = -ENODEV;
  goto out;
 }

 err = atk_init_attribute_groups(data);
 if (err)
  goto out;
 err = atk_register_hwmon(data);
 if (err)
  goto out;

 atk_debugfs_init(data);

 device->driver_data = data;
 return 0;
out:
 if (data->disable_ec)
  atk_ec_ctl(data, 0);
 return err;
}
