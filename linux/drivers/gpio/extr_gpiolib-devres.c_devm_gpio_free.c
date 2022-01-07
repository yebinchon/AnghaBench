
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_gpio_match ;
 int devm_gpio_release ;
 int devres_release (struct device*,int ,int ,unsigned int*) ;

void devm_gpio_free(struct device *dev, unsigned int gpio)
{

 WARN_ON(devres_release(dev, devm_gpio_release, devm_gpio_match,
  &gpio));
}
