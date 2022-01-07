
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_gpiod_match_array(struct device *dev, void *res, void *data)
{
 struct gpio_descs **this = res, **gpios = data;

 return *this == *gpios;
}
