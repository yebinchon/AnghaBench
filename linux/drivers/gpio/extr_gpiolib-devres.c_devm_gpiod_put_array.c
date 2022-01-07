
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_gpiod_match_array ;
 int devm_gpiod_release_array ;
 int devres_release (struct device*,int ,int ,struct gpio_descs**) ;

void devm_gpiod_put_array(struct device *dev, struct gpio_descs *descs)
{
 WARN_ON(devres_release(dev, devm_gpiod_release_array,
          devm_gpiod_match_array, &descs));
}
