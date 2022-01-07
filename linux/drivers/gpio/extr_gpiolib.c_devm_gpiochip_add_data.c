
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_gpio_chip_release ;
 int devres_add (struct device*,struct gpio_chip**) ;
 struct gpio_chip** devres_alloc (int ,int,int ) ;
 int devres_free (struct gpio_chip**) ;
 int gpiochip_add_data (struct gpio_chip*,void*) ;

int devm_gpiochip_add_data(struct device *dev, struct gpio_chip *chip,
      void *data)
{
 struct gpio_chip **ptr;
 int ret;

 ptr = devres_alloc(devm_gpio_chip_release, sizeof(*ptr),
        GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = gpiochip_add_data(chip, data);
 if (ret < 0) {
  devres_free(ptr);
  return ret;
 }

 *ptr = chip;
 devres_add(dev, ptr);

 return 0;
}
