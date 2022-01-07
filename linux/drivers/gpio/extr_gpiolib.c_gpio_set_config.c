
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int (* set_config ) (struct gpio_chip*,unsigned int,unsigned long) ;} ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;


 unsigned long PIN_CONF_PACKED (int,unsigned int) ;
 int stub1 (struct gpio_chip*,unsigned int,unsigned long) ;

__attribute__((used)) static int gpio_set_config(struct gpio_chip *gc, unsigned offset,
      enum pin_config_param mode)
{
 unsigned long config;
 unsigned arg;

 switch (mode) {
 case 129:
 case 128:
  arg = 1;
  break;

 default:
  arg = 0;
 }

 config = PIN_CONF_PACKED(mode, arg);
 return gc->set_config ? gc->set_config(gc, offset, config) : -ENOTSUPP;
}
