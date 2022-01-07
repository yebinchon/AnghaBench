
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct gpio_desc {int dummy; } ;
struct ad5592r_state {TYPE_1__* ops; int dev; } ;
struct TYPE_2__ {int (* reg_write ) (struct ad5592r_state*,int ,int) ;} ;


 int AD5592R_REG_RESET ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 struct gpio_desc* devm_gpiod_get_optional (int ,char*,int ) ;
 int gpiod_set_value (struct gpio_desc*,int) ;
 struct iio_dev* iio_priv_to_dev (struct ad5592r_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5592r_state*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int ad5592r_reset(struct ad5592r_state *st)
{
 struct gpio_desc *gpio;
 struct iio_dev *iio_dev = iio_priv_to_dev(st);

 gpio = devm_gpiod_get_optional(st->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 if (gpio) {
  udelay(1);
  gpiod_set_value(gpio, 1);
 } else {
  mutex_lock(&iio_dev->mlock);

  st->ops->reg_write(st, AD5592R_REG_RESET, 0xdac);
  mutex_unlock(&iio_dev->mlock);
 }

 udelay(250);

 return 0;
}
