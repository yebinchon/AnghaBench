
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_twl4030_priv {int mutex; } ;
struct gpio_chip {int dummy; } ;


 unsigned int TWL4030_GPIO_MAX ;
 struct gpio_twl4030_priv* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int twl4030_get_gpio_direction (unsigned int) ;

__attribute__((used)) static int twl_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_twl4030_priv *priv = gpiochip_get_data(chip);




 int ret = 0;

 mutex_lock(&priv->mutex);
 if (offset < TWL4030_GPIO_MAX) {
  ret = twl4030_get_gpio_direction(offset);
  if (ret) {
   mutex_unlock(&priv->mutex);
   return ret;
  }
 }
 mutex_unlock(&priv->mutex);

 return ret;
}
