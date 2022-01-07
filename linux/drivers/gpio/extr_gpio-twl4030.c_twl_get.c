
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_twl4030_priv {int usage_count; int direction; int out_state; int mutex; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int EPERM ;
 struct gpio_twl4030_priv* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int twl4030_get_gpio_datain (unsigned int) ;

__attribute__((used)) static int twl_get(struct gpio_chip *chip, unsigned offset)
{
 struct gpio_twl4030_priv *priv = gpiochip_get_data(chip);
 int ret;
 int status = 0;

 mutex_lock(&priv->mutex);
 if (!(priv->usage_count & BIT(offset))) {
  ret = -EPERM;
  goto out;
 }

 if (priv->direction & BIT(offset))
  status = priv->out_state & BIT(offset);
 else
  status = twl4030_get_gpio_datain(offset);

 ret = (status < 0) ? status : !!status;
out:
 mutex_unlock(&priv->mutex);
 return ret;
}
