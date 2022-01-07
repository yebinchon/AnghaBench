
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR_OR_NULL (struct gpio_desc*) ;
 int WARN_ON (int) ;
 int devm_gpiod_match ;
 int devm_gpiod_release ;
 int devres_destroy (struct device*,int ,int ,struct gpio_desc**) ;

void devm_gpiod_unhinge(struct device *dev, struct gpio_desc *desc)
{
 int ret;

 if (IS_ERR_OR_NULL(desc))
  return;
 ret = devres_destroy(dev, devm_gpiod_release,
        devm_gpiod_match, &desc);





 if (ret == -ENOENT)
  return;

 WARN_ON(ret);
}
