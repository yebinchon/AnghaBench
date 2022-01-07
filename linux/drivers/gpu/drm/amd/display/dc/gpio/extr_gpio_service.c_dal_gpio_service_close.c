
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_gpio_pin {TYPE_1__* funcs; int en; int id; } ;
struct gpio_service {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct hw_gpio_pin*) ;} ;


 int ASSERT_CRITICAL (int) ;
 int set_pin_free (struct gpio_service*,int ,int ) ;
 int stub1 (struct hw_gpio_pin*) ;

void dal_gpio_service_close(
 struct gpio_service *service,
 struct hw_gpio_pin **ptr)
{
 struct hw_gpio_pin *pin;

 if (!ptr) {
  ASSERT_CRITICAL(0);
  return;
 }

 pin = *ptr;

 if (pin) {
  set_pin_free(service, pin->id, pin->en);

  pin->funcs->close(pin);

  *ptr = ((void*)0);
 }
}
