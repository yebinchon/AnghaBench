
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct max732x_chip {int* reg_out; int lock; } ;
struct gpio_chip {int dummy; } ;


 struct max732x_chip* gpiochip_get_data (struct gpio_chip*) ;
 int is_group_a (struct max732x_chip*,unsigned int) ;
 int max732x_writeb (struct max732x_chip*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void max732x_gpio_set_mask(struct gpio_chip *gc, unsigned off, int mask,
      int val)
{
 struct max732x_chip *chip = gpiochip_get_data(gc);
 uint8_t reg_out;
 int ret;

 mutex_lock(&chip->lock);

 reg_out = (off > 7) ? chip->reg_out[1] : chip->reg_out[0];
 reg_out = (reg_out & ~mask) | (val & mask);

 ret = max732x_writeb(chip, is_group_a(chip, off), reg_out);
 if (ret < 0)
  goto out;


 if (off > 7)
  chip->reg_out[1] = reg_out;
 else
  chip->reg_out[0] = reg_out;
out:
 mutex_unlock(&chip->lock);
}
