
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;


 void* ACPI_HANDLE (int ) ;

__attribute__((used)) static int acpi_gpiochip_find(struct gpio_chip *gc, void *data)
{
 if (!gc->parent)
  return 0;

 return ACPI_HANDLE(gc->parent) == data;
}
