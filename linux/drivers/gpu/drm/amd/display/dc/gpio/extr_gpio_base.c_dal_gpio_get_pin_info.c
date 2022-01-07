
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gpio_pin_info {int dummy; } ;
struct gpio {int en; int id; TYPE_3__* service; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ translate; } ;
struct TYPE_4__ {scalar_t__ (* id_to_offset ) (int ,int ,struct gpio_pin_info*) ;} ;


 int GPIO_RESULT_INVALID_DATA ;
 int GPIO_RESULT_OK ;
 scalar_t__ stub1 (int ,int ,struct gpio_pin_info*) ;

enum gpio_result dal_gpio_get_pin_info(
 const struct gpio *gpio,
 struct gpio_pin_info *pin_info)
{
 return gpio->service->translate.funcs->id_to_offset(
  gpio->id, gpio->en, pin_info) ?
  GPIO_RESULT_OK : GPIO_RESULT_INVALID_DATA;
}
