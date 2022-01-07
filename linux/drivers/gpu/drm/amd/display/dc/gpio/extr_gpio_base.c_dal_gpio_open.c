
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int dummy; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_mode { ____Placeholder_gpio_mode } gpio_mode ;


 int dal_gpio_open_ex (struct gpio*,int) ;

enum gpio_result dal_gpio_open(
 struct gpio *gpio,
 enum gpio_mode mode)
{
 return dal_gpio_open_ex(gpio, mode);
}
