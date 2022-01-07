
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; } ;
struct TYPE_5__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_3__ package; TYPE_2__ integer; } ;
typedef int u16 ;
struct device {int dummy; } ;
struct atk_data {int enumerate_handle; TYPE_1__* acpi_dev; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int length; } ;
typedef scalar_t__ acpi_status ;
struct TYPE_4__ {struct device dev; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_OK ;
 int EIO ;
 int ENOENT ;
 union acpi_object* ERR_PTR (int ) ;
 scalar_t__ acpi_evaluate_object (int ,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_format_exception (scalar_t__) ;
 int dev_err (struct device*,char*,int ,...) ;

__attribute__((used)) static union acpi_object *atk_ggrp(struct atk_data *data, u16 mux)
{
 struct device *dev = &data->acpi_dev->dev;
 struct acpi_buffer buf;
 acpi_status ret;
 struct acpi_object_list params;
 union acpi_object id;
 union acpi_object *pack;

 id.type = ACPI_TYPE_INTEGER;
 id.integer.value = mux;
 params.count = 1;
 params.pointer = &id;

 buf.length = ACPI_ALLOCATE_BUFFER;
 ret = acpi_evaluate_object(data->enumerate_handle, ((void*)0), &params, &buf);
 if (ret != AE_OK) {
  dev_err(dev, "GGRP[%#x] ACPI exception: %s\n", mux,
    acpi_format_exception(ret));
  return ERR_PTR(-EIO);
 }
 pack = buf.pointer;
 if (pack->type != ACPI_TYPE_PACKAGE) {

  ACPI_FREE(pack);
  return ERR_PTR(-ENOENT);
 }

 if (pack->package.count < 1) {
  dev_err(dev, "GGRP[%#x] package is too small\n", mux);
  ACPI_FREE(pack);
  return ERR_PTR(-EIO);
 }
 return pack;
}
