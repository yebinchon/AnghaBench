
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource_gpio {int io_restriction; int pin_config; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;






 int GPIOD_ASIS ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;

__attribute__((used)) static enum gpiod_flags
acpi_gpio_to_gpiod_flags(const struct acpi_resource_gpio *agpio)
{
 switch (agpio->io_restriction) {
 case 131:
  return GPIOD_IN;
 case 130:







  switch (agpio->pin_config) {
  case 128:
   return GPIOD_OUT_HIGH;
  case 129:
   return GPIOD_OUT_LOW;
  default:
   break;
  }
 default:
  break;
 }





 return GPIOD_ASIS;
}
