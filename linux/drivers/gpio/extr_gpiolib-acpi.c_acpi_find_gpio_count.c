
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pin_table_length; } ;
struct TYPE_4__ {TYPE_1__ gpio; } ;
struct acpi_resource {scalar_t__ type; TYPE_2__ data; } ;


 scalar_t__ ACPI_RESOURCE_TYPE_GPIO ;

__attribute__((used)) static int acpi_find_gpio_count(struct acpi_resource *ares, void *data)
{
 unsigned int *count = data;

 if (ares->type == ACPI_RESOURCE_TYPE_GPIO)
  *count += ares->data.gpio.pin_table_length;

 return 1;
}
