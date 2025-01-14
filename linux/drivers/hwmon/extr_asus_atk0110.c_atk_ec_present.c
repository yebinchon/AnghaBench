
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ integer; TYPE_2__ package; } ;
struct device {int dummy; } ;
struct atk_data {TYPE_1__* acpi_dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ATK_EC_ID ;
 int ATK_MUX_MGMT ;
 int ENOENT ;
 scalar_t__ IS_ERR (union acpi_object*) ;
 int PTR_ERR (union acpi_object*) ;
 union acpi_object* atk_ggrp (struct atk_data*,int ) ;
 int dev_dbg (struct device*,char*,...) ;

__attribute__((used)) static int atk_ec_present(struct atk_data *data)
{
 struct device *dev = &data->acpi_dev->dev;
 union acpi_object *pack;
 union acpi_object *ec;
 int ret;
 int i;

 pack = atk_ggrp(data, ATK_MUX_MGMT);
 if (IS_ERR(pack)) {
  if (PTR_ERR(pack) == -ENOENT) {

   dev_dbg(dev, "Class %#llx not found\n", ATK_MUX_MGMT);
   return 0;
  }
  return PTR_ERR(pack);
 }


 ec = ((void*)0);
 for (i = 0; i < pack->package.count; i++) {
  union acpi_object *obj = &pack->package.elements[i];
  union acpi_object *id;

  if (obj->type != ACPI_TYPE_PACKAGE)
   continue;

  id = &obj->package.elements[0];
  if (id->type != ACPI_TYPE_INTEGER)
   continue;

  if (id->integer.value == ATK_EC_ID) {
   ec = obj;
   break;
  }
 }

 ret = (ec != ((void*)0));
 if (!ret)

  dev_dbg(dev, "EC not found\n");

 ACPI_FREE(pack);
 return ret;
}
