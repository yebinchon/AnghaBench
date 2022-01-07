
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int en; int id; int service; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;


 int dal_gpio_service_lock (int ,int ,int ) ;

enum gpio_result dal_gpio_lock_pin(
 struct gpio *gpio)
{
 return dal_gpio_service_lock(gpio->service, gpio->id, gpio->en);
}
