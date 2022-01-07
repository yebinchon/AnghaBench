
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpio_service {int * busyness; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int ASSERT_CRITICAL (int) ;
 int GPIO_RESULT_OK ;
 int GPIO_RESULT_OPEN_FAILED ;
 int set_pin_busy (struct gpio_service*,int,int ) ;

enum gpio_result dal_gpio_service_lock(
 struct gpio_service *service,
 enum gpio_id id,
 uint32_t en)
{
 if (!service->busyness[id]) {
  ASSERT_CRITICAL(0);
  return GPIO_RESULT_OPEN_FAILED;
 }

 set_pin_busy(service, id, en);
 return GPIO_RESULT_OK;
}
