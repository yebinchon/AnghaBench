
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio {TYPE_2__* pin; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* change_mode ) (TYPE_2__*,int) ;} ;


 int BREAK_TO_DEBUGGER () ;
 int GPIO_RESULT_NULL_HANDLE ;
 int stub1 (TYPE_2__*,int) ;

enum gpio_result dal_gpio_change_mode(
 struct gpio *gpio,
 enum gpio_mode mode)
{
 if (!gpio->pin) {
  BREAK_TO_DEBUGGER();
  return GPIO_RESULT_NULL_HANDLE;
 }

 return gpio->pin->funcs->change_mode(gpio->pin, mode);
}
