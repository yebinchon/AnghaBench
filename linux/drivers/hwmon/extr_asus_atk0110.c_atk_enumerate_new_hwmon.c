
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {TYPE_2__ package; } ;
struct device {int dummy; } ;
struct atk_data {int disable_ec; int voltage_count; int temperature_count; int fan_count; TYPE_1__* acpi_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int ACPI_FREE (union acpi_object*) ;
 int ATK_MUX_HWMON ;
 scalar_t__ IS_ERR (union acpi_object*) ;
 int PTR_ERR (union acpi_object*) ;
 int atk_add_sensor (struct atk_data*,union acpi_object*) ;
 int atk_ec_ctl (struct atk_data*,int) ;
 int atk_ec_enabled (struct atk_data*) ;
 int atk_ec_present (struct atk_data*) ;
 union acpi_object* atk_ggrp (struct atk_data*,int ) ;
 int dev_dbg (struct device*,char*) ;

__attribute__((used)) static int atk_enumerate_new_hwmon(struct atk_data *data)
{
 struct device *dev = &data->acpi_dev->dev;
 union acpi_object *pack;
 int err;
 int i;

 err = atk_ec_present(data);
 if (err < 0)
  return err;
 if (err) {
  err = atk_ec_enabled(data);
  if (err < 0)
   return err;

  data->disable_ec = err;

  err = atk_ec_ctl(data, 1);
  if (err) {
   data->disable_ec = 0;
   return err;
  }
 }

 dev_dbg(dev, "Enumerating hwmon sensors\n");

 pack = atk_ggrp(data, ATK_MUX_HWMON);
 if (IS_ERR(pack))
  return PTR_ERR(pack);

 for (i = 0; i < pack->package.count; i++) {
  union acpi_object *obj = &pack->package.elements[i];

  atk_add_sensor(data, obj);
 }

 err = data->voltage_count + data->temperature_count + data->fan_count;

 ACPI_FREE(pack);
 return err;
}
