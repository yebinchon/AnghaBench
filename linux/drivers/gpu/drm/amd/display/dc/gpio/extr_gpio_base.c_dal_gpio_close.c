
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int mode; int pin; int service; } ;


 int GPIO_MODE_UNKNOWN ;
 int dal_gpio_service_close (int ,int *) ;

void dal_gpio_close(
 struct gpio *gpio)
{
 if (!gpio)
  return;

 dal_gpio_service_close(gpio->service, &gpio->pin);

 gpio->mode = GPIO_MODE_UNKNOWN;
}
