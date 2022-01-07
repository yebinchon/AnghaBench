
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ gpio_is_valid (unsigned int) ;
 struct gpio_desc* gpio_to_desc (unsigned int) ;
 int gpiod_request (struct gpio_desc*,char const*) ;

int gpio_request(unsigned gpio, const char *label)
{
 struct gpio_desc *desc = gpio_to_desc(gpio);


 if (!desc && gpio_is_valid(gpio))
  return -EPROBE_DEFER;

 return gpiod_request(desc, label);
}
