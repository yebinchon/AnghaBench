
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_als {TYPE_1__* device; } ;
typedef unsigned long long s32 ;
typedef int acpi_status ;
struct TYPE_2__ {int handle; } ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_INFO ;
 int EIO ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int acpi_als_read_value(struct acpi_als *als, char *prop, s32 *val)
{
 unsigned long long temp_val;
 acpi_status status;

 status = acpi_evaluate_integer(als->device->handle, prop, ((void*)0),
           &temp_val);

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Error reading ALS %s", prop));
  return -EIO;
 }

 *val = temp_val;

 return 0;
}
