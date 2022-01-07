
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct it87_gpio {int lock; scalar_t__ output_base; } ;
struct gpio_chip {int dummy; } ;


 struct it87_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int superio_clear_mask (int,scalar_t__) ;
 int superio_enter () ;
 int superio_exit () ;

__attribute__((used)) static int it87_gpio_direction_in(struct gpio_chip *chip, unsigned gpio_num)
{
 u8 mask, group;
 int rc = 0;
 struct it87_gpio *it87_gpio = gpiochip_get_data(chip);

 mask = 1 << (gpio_num % 8);
 group = (gpio_num / 8);

 spin_lock(&it87_gpio->lock);

 rc = superio_enter();
 if (rc)
  goto exit;


 superio_clear_mask(mask, group + it87_gpio->output_base);

 superio_exit();

exit:
 spin_unlock(&it87_gpio->lock);
 return rc;
}
