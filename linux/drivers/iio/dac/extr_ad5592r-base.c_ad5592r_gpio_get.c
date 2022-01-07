
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct ad5592r_state {int gpio_out; int gpio_val; int gpio_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* gpio_read ) (struct ad5592r_state*,int*) ;} ;


 int BIT (unsigned int) ;
 struct ad5592r_state* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5592r_state*,int*) ;

__attribute__((used)) static int ad5592r_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct ad5592r_state *st = gpiochip_get_data(chip);
 int ret = 0;
 u8 val;

 mutex_lock(&st->gpio_lock);

 if (st->gpio_out & BIT(offset))
  val = st->gpio_val;
 else
  ret = st->ops->gpio_read(st, &val);

 mutex_unlock(&st->gpio_lock);

 if (ret < 0)
  return ret;

 return !!(val & BIT(offset));
}
