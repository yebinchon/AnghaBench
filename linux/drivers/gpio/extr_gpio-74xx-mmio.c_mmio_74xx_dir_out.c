
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmio_74xx_gpio_priv {int flags; } ;
struct gpio_chip {int (* set ) (struct gpio_chip*,unsigned int,int) ;} ;


 int ENOTSUPP ;
 int MMIO_74XX_DIR_OUT ;
 struct mmio_74xx_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int mmio_74xx_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
{
 struct mmio_74xx_gpio_priv *priv = gpiochip_get_data(gc);

 if (priv->flags & MMIO_74XX_DIR_OUT) {
  gc->set(gc, gpio, val);
  return 0;
 }

 return -ENOTSUPP;
}
