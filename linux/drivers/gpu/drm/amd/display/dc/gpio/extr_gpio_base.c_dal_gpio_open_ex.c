
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ddc; } ;
struct gpio {int mode; TYPE_1__ hw_container; scalar_t__ pin; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;


 int ASSERT_CRITICAL (int) ;
 int GPIO_RESULT_ALREADY_OPENED ;
 int GPIO_RESULT_NON_SPECIFIC_ERROR ;
 int dal_gpio_service_open (struct gpio*) ;

enum gpio_result dal_gpio_open_ex(
 struct gpio *gpio,
 enum gpio_mode mode)
{
 if (gpio->pin) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_ALREADY_OPENED;
 }


 if (!gpio->hw_container.ddc) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_NON_SPECIFIC_ERROR;
 }
 gpio->mode = mode;

 return dal_gpio_service_open(gpio);
}
