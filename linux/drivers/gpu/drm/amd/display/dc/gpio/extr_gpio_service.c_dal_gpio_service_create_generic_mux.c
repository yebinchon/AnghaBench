
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct gpio_service {TYPE_2__ translate; } ;
struct gpio {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_3__ {int (* offset_to_id ) (int ,int ,int*,int *) ;} ;


 int ASSERT_CRITICAL (int) ;
 int GPIO_PIN_OUTPUT_STATE_DEFAULT ;
 struct gpio* dal_gpio_create (struct gpio_service*,int,int ,int ) ;
 int stub1 (int ,int ,int*,int *) ;

struct gpio *dal_gpio_service_create_generic_mux(
 struct gpio_service *service,
 uint32_t offset,
 uint32_t mask)
{
 enum gpio_id id;
 uint32_t en;
 struct gpio *generic;

 if (!service->translate.funcs->offset_to_id(offset, mask, &id, &en)) {
  ASSERT_CRITICAL(0);
  return ((void*)0);
 }

 generic = dal_gpio_create(
  service, id, en, GPIO_PIN_OUTPUT_STATE_DEFAULT);

 return generic;
}
