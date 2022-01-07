
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;


 scalar_t__ ACPI_TYPE_INTEGER ;

__attribute__((used)) static int soc_button_get_acpi_object_int(const union acpi_object *obj)
{
 if (obj->type != ACPI_TYPE_INTEGER)
  return -1;

 return obj->integer.value;
}
