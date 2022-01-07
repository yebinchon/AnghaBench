
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_led {int gpio; int name; scalar_t__ active_low; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 struct gpio_desc* ERR_PTR (int) ;
 unsigned long GPIOF_ACTIVE_LOW ;
 unsigned long GPIOF_OUT_INIT_LOW ;
 int IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int devm_gpio_request_one (struct device*,int ,unsigned long,int ) ;
 struct gpio_desc* devm_gpiod_get_index (struct device*,int *,int,unsigned long) ;
 int gpio_is_valid (int ) ;
 struct gpio_desc* gpio_to_desc (int ) ;
 int gpiod_set_consumer_name (struct gpio_desc*,int ) ;

__attribute__((used)) static struct gpio_desc *gpio_led_get_gpiod(struct device *dev, int idx,
         const struct gpio_led *template)
{
 struct gpio_desc *gpiod;
 unsigned long flags = GPIOF_OUT_INIT_LOW;
 int ret;







 gpiod = devm_gpiod_get_index(dev, ((void*)0), idx, flags);
 if (!IS_ERR(gpiod)) {
  gpiod_set_consumer_name(gpiod, template->name);
  return gpiod;
 }
 if (PTR_ERR(gpiod) != -ENOENT)
  return gpiod;
 if (!gpio_is_valid(template->gpio))
  return ERR_PTR(-ENOENT);

 if (template->active_low)
  flags |= GPIOF_ACTIVE_LOW;

 ret = devm_gpio_request_one(dev, template->gpio, flags,
        template->name);
 if (ret < 0)
  return ERR_PTR(ret);

 gpiod = gpio_to_desc(template->gpio);
 if (!gpiod)
  return ERR_PTR(-EINVAL);

 return gpiod;
}
