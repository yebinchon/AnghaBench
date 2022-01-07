
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc8xxx_gpio_chip {int (* direction_output ) (struct gpio_chip*,unsigned int,int) ;} ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 struct mpc8xxx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int mpc5121_gpio_dir_out(struct gpio_chip *gc,
    unsigned int gpio, int val)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = gpiochip_get_data(gc);

 if (gpio >= 28)
  return -EINVAL;

 return mpc8xxx_gc->direction_output(gc, gpio, val);
}
