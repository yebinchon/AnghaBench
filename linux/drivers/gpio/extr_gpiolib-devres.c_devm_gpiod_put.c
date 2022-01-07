
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_gpiod_match ;
 int devm_gpiod_release ;
 int devres_release (struct device*,int ,int ,struct gpio_desc**) ;

void devm_gpiod_put(struct device *dev, struct gpio_desc *desc)
{
 WARN_ON(devres_release(dev, devm_gpiod_release, devm_gpiod_match,
  &desc));
}
