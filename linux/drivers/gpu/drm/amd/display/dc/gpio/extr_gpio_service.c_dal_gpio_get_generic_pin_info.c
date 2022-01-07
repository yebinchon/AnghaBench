
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct gpio_service {TYPE_2__ translate; } ;
struct gpio_pin_info {int mask; int offset; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_3__ {int (* id_to_offset ) (int,int ,struct gpio_pin_info*) ;} ;


 int stub1 (int,int ,struct gpio_pin_info*) ;

struct gpio_pin_info dal_gpio_get_generic_pin_info(
 struct gpio_service *service,
 enum gpio_id id,
 uint32_t en)
{
 struct gpio_pin_info pin;

 if (service->translate.funcs->id_to_offset) {
  service->translate.funcs->id_to_offset(id, en, &pin);
 } else {
  pin.mask = 0xFFFFFFFF;
  pin.offset = 0xFFFFFFFF;
 }

 return pin;
}
