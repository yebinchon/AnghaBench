
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {union acpi_object* pointer; int length; } ;
union acpi_object {TYPE_2__ integer; void* type; TYPE_1__ buffer; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
struct acpi_buffer {union acpi_object* pointer; int length; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 void* ACPI_TYPE_BUFFER ;
 void* ACPI_TYPE_INTEGER ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_evaluate_object (int ,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_format_exception (scalar_t__) ;
 int kfree (union acpi_object*) ;
 int printk (char*,int ) ;

__attribute__((used)) static union acpi_object *radeon_atpx_call(acpi_handle handle, int function,
        struct acpi_buffer *params)
{
 acpi_status status;
 union acpi_object atpx_arg_elements[2];
 struct acpi_object_list atpx_arg;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };

 atpx_arg.count = 2;
 atpx_arg.pointer = &atpx_arg_elements[0];

 atpx_arg_elements[0].type = ACPI_TYPE_INTEGER;
 atpx_arg_elements[0].integer.value = function;

 if (params) {
  atpx_arg_elements[1].type = ACPI_TYPE_BUFFER;
  atpx_arg_elements[1].buffer.length = params->length;
  atpx_arg_elements[1].buffer.pointer = params->pointer;
 } else {

  atpx_arg_elements[1].type = ACPI_TYPE_INTEGER;
  atpx_arg_elements[1].integer.value = 0;
 }

 status = acpi_evaluate_object(handle, ((void*)0), &atpx_arg, &buffer);


 if (ACPI_FAILURE(status) && status != AE_NOT_FOUND) {
  printk("failed to evaluate ATPX got %s\n",
         acpi_format_exception(status));
  kfree(buffer.pointer);
  return ((void*)0);
 }

 return buffer.pointer;
}
