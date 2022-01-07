
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpio_info {int pin_config; unsigned long polarity; } ;




 unsigned long GPIO_ACTIVE_LOW ;
 unsigned long GPIO_PULL_DOWN ;
 unsigned long GPIO_PULL_UP ;

int acpi_gpio_update_gpiod_lookup_flags(unsigned long *lookupflags,
     struct acpi_gpio_info *info)
{
 switch (info->pin_config) {
 case 128:
  *lookupflags |= GPIO_PULL_UP;
  break;
 case 129:
  *lookupflags |= GPIO_PULL_DOWN;
  break;
 default:
  break;
 }

 if (info->polarity == GPIO_ACTIVE_LOW)
  *lookupflags |= GPIO_ACTIVE_LOW;

 return 0;
}
