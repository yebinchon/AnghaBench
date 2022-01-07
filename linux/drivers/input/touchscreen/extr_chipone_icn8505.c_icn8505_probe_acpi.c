
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ string; } ;
struct icn8505_data {int firmware_name; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 struct acpi_device* ACPI_COMPANION (struct device*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_STRING ;
 int ENODEV ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int dev_warn (struct device*,char*,...) ;
 int kfree (union acpi_object*) ;
 int snprintf (int ,int,char*,char const*) ;

__attribute__((used)) static int icn8505_probe_acpi(struct icn8505_data *icn8505, struct device *dev)
{
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 const char *subsys = "unknown";
 struct acpi_device *adev;
 union acpi_object *obj;
 acpi_status status;

 adev = ACPI_COMPANION(dev);
 if (!adev)
  return -ENODEV;

 status = acpi_evaluate_object(adev->handle, "_SUB", ((void*)0), &buffer);
 if (ACPI_SUCCESS(status)) {
  obj = buffer.pointer;
  if (obj->type == ACPI_TYPE_STRING)
   subsys = obj->string.pointer;
  else
   dev_warn(dev, "Warning ACPI _SUB did not return a string\n");
 } else {
  dev_warn(dev, "Warning ACPI _SUB failed: %#x\n", status);
  buffer.pointer = ((void*)0);
 }

 snprintf(icn8505->firmware_name, sizeof(icn8505->firmware_name),
   "chipone/icn8505-%s.fw", subsys);

 kfree(buffer.pointer);
 return 0;
}
