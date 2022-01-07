
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; union acpi_object* elements; } ;
union acpi_object {int type; TYPE_1__ package; } ;




 int EPROTO ;

__attribute__((used)) static int acpi_gpio_package_count(const union acpi_object *obj)
{
 const union acpi_object *element = obj->package.elements;
 const union acpi_object *end = element + obj->package.count;
 unsigned int count = 0;

 while (element < end) {
  switch (element->type) {
  case 128:
   element += 3;

  case 129:
   element++;
   count++;
   break;

  default:
   return -EPROTO;
  }
 }

 return count;
}
