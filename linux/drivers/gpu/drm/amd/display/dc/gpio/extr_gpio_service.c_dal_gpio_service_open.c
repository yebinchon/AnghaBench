
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct hw_gpio_pin {TYPE_3__* funcs; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct gpio_service {TYPE_2__ factory; int * busyness; } ;
struct gpio {int id; int mode; struct hw_gpio_pin* pin; int en; struct gpio_service* service; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
struct TYPE_6__ {int (* open ) (struct hw_gpio_pin*,int) ;} ;
struct TYPE_4__ {int (* define_hpd_registers ) (struct hw_gpio_pin*,int ) ;struct hw_gpio_pin* (* get_hpd_pin ) (struct gpio*) ;int (* define_generic_registers ) (struct hw_gpio_pin*,int ) ;struct hw_gpio_pin* (* get_generic_pin ) (struct gpio*) ;int (* define_ddc_registers ) (struct hw_gpio_pin*,int ) ;struct hw_gpio_pin* (* get_ddc_pin ) (struct gpio*) ;} ;


 int ASSERT_CRITICAL (int) ;






 int GPIO_RESULT_DEVICE_BUSY ;
 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int GPIO_RESULT_OK ;
 int GPIO_RESULT_OPEN_FAILED ;
 int dal_gpio_service_close (struct gpio_service*,struct hw_gpio_pin**) ;
 scalar_t__ is_pin_busy (struct gpio_service*,int,int ) ;
 int set_pin_busy (struct gpio_service*,int,int ) ;
 struct hw_gpio_pin* stub1 (struct gpio*) ;
 int stub2 (struct hw_gpio_pin*,int ) ;
 struct hw_gpio_pin* stub3 (struct gpio*) ;
 int stub4 (struct hw_gpio_pin*,int ) ;
 struct hw_gpio_pin* stub5 (struct gpio*) ;
 int stub6 (struct hw_gpio_pin*,int ) ;
 struct hw_gpio_pin* stub7 (struct gpio*) ;
 int stub8 (struct hw_gpio_pin*,int ) ;
 int stub9 (struct hw_gpio_pin*,int) ;

enum gpio_result dal_gpio_service_open(
 struct gpio *gpio)
{
 struct gpio_service *service = gpio->service;
 enum gpio_id id = gpio->id;
 uint32_t en = gpio->en;
 enum gpio_mode mode = gpio->mode;

 struct hw_gpio_pin **pin = &gpio->pin;


 if (!service->busyness[id]) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_OPEN_FAILED;
 }

 if (is_pin_busy(service, id, en)) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_DEVICE_BUSY;
 }

 switch (id) {
 case 132:
  *pin = service->factory.funcs->get_ddc_pin(gpio);
  service->factory.funcs->define_ddc_registers(*pin, en);
 break;
 case 133:
  *pin = service->factory.funcs->get_ddc_pin(gpio);
  service->factory.funcs->define_ddc_registers(*pin, en);
 break;
 case 131:
  *pin = service->factory.funcs->get_generic_pin(gpio);
  service->factory.funcs->define_generic_registers(*pin, en);
 break;
 case 129:
  *pin = service->factory.funcs->get_hpd_pin(gpio);
  service->factory.funcs->define_hpd_registers(*pin, en);
 break;


 case 128:
 case 130:
 break;
 default:
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_NON_SPECIFIC_ERROR;
 }

 if (!*pin) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_NON_SPECIFIC_ERROR;
 }

 if (!(*pin)->funcs->open(*pin, mode)) {
  ASSERT_CRITICAL(0);
  dal_gpio_service_close(service, pin);
  return GPIO_RESULT_OPEN_FAILED;
 }

 set_pin_busy(service, id, en);
 return GPIO_RESULT_OK;
}
