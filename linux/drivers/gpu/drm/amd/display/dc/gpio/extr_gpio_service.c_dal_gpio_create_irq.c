
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpio_service {int dummy; } ;
struct gpio {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;


 int ASSERT_CRITICAL (int) ;


 int GPIO_PIN_OUTPUT_STATE_DEFAULT ;
 struct gpio* dal_gpio_create (struct gpio_service*,int,int ,int ) ;

struct gpio *dal_gpio_create_irq(
 struct gpio_service *service,
 enum gpio_id id,
 uint32_t en)
{
 struct gpio *irq;

 switch (id) {
 case 128:
 case 129:
 break;
 default:
  id = 128;
  ASSERT_CRITICAL(0);
  return ((void*)0);
 }

 irq = dal_gpio_create(
  service, id, en, GPIO_PIN_OUTPUT_STATE_DEFAULT);

 if (irq)
  return irq;

 ASSERT_CRITICAL(0);
 return ((void*)0);
}
