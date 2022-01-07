
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; int * pointer; } ;
union acpi_object {TYPE_2__ buffer; int type; } ;
typedef int u8 ;
typedef int u64 ;
struct device {int dummy; } ;
struct atk_data {int read_handle; TYPE_1__* acpi_dev; } ;
struct atk_acpi_input_buf {scalar_t__ param2; scalar_t__ param1; int id; } ;
struct acpi_object_list {int count; void* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int length; } ;
typedef int buf ;
typedef scalar_t__ acpi_status ;
struct TYPE_3__ {struct device dev; } ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_BUFFER ;
 scalar_t__ AE_OK ;
 int EIO ;
 union acpi_object* ERR_PTR (int ) ;
 scalar_t__ acpi_evaluate_object_typed (int ,int *,struct acpi_object_list*,struct acpi_buffer*,int ) ;
 int acpi_format_exception (scalar_t__) ;
 int dev_warn (struct device*,char*,int,...) ;

__attribute__((used)) static union acpi_object *atk_gitm(struct atk_data *data, u64 id)
{
 struct device *dev = &data->acpi_dev->dev;
 struct atk_acpi_input_buf buf;
 union acpi_object tmp;
 struct acpi_object_list params;
 struct acpi_buffer ret;
 union acpi_object *obj;
 acpi_status status;

 buf.id = id;
 buf.param1 = 0;
 buf.param2 = 0;

 tmp.type = ACPI_TYPE_BUFFER;
 tmp.buffer.pointer = (u8 *)&buf;
 tmp.buffer.length = sizeof(buf);

 params.count = 1;
 params.pointer = (void *)&tmp;

 ret.length = ACPI_ALLOCATE_BUFFER;
 status = acpi_evaluate_object_typed(data->read_handle, ((void*)0), &params,
   &ret, ACPI_TYPE_BUFFER);
 if (status != AE_OK) {
  dev_warn(dev, "GITM[%#llx] ACPI exception: %s\n", id,
    acpi_format_exception(status));
  return ERR_PTR(-EIO);
 }
 obj = ret.pointer;


 if (obj->buffer.length < 8) {
  dev_warn(dev, "Unexpected ASBF length: %u\n",
    obj->buffer.length);
  ACPI_FREE(obj);
  return ERR_PTR(-EIO);
 }
 return obj;
}
