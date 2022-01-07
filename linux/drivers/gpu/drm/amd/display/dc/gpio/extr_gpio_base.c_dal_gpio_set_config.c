
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_config_data {int dummy; } ;
struct gpio {TYPE_2__* pin; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* set_config ) (TYPE_2__*,struct gpio_config_data const*) ;} ;


 int BREAK_TO_DEBUGGER () ;
 int GPIO_RESULT_NULL_HANDLE ;
 int stub1 (TYPE_2__*,struct gpio_config_data const*) ;

enum gpio_result dal_gpio_set_config(
 struct gpio *gpio,
 const struct gpio_config_data *config_data)
{
 if (!gpio->pin) {
  BREAK_TO_DEBUGGER();
  return GPIO_RESULT_NULL_HANDLE;
 }

 return gpio->pin->funcs->set_config(gpio->pin, config_data);
}
