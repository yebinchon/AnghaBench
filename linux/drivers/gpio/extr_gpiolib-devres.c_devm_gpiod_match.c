
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_gpiod_match(struct device *dev, void *res, void *data)
{
 struct gpio_desc **this = res, **gpio = data;

 return *this == *gpio;
}
