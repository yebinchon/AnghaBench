
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int gpiod_put (struct gpio_desc*) ;

__attribute__((used)) static void devm_gpiod_release(struct device *dev, void *res)
{
 struct gpio_desc **desc = res;

 gpiod_put(*desc);
}
