
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct TYPE_2__ {scalar_t__ rx_buf; } ;
struct max3191x_chip {int lock; TYPE_1__ xfer; } ;
struct gpio_chip {int dummy; } ;


 int EIO ;
 unsigned int MAX3191X_NGPIO ;
 struct max3191x_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ max3191x_chip_is_faulting (struct max3191x_chip*,int) ;
 int max3191x_readout_locked (struct max3191x_chip*) ;
 int max3191x_wordlen (struct max3191x_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max3191x_get(struct gpio_chip *gpio, unsigned int offset)
{
 struct max3191x_chip *max3191x = gpiochip_get_data(gpio);
 int ret, chipnum, wordlen = max3191x_wordlen(max3191x);
 u8 in;

 mutex_lock(&max3191x->lock);
 ret = max3191x_readout_locked(max3191x);
 if (ret)
  goto out_unlock;

 chipnum = offset / MAX3191X_NGPIO;
 if (max3191x_chip_is_faulting(max3191x, chipnum)) {
  ret = -EIO;
  goto out_unlock;
 }

 in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
 ret = (in >> (offset % MAX3191X_NGPIO)) & 1;

out_unlock:
 mutex_unlock(&max3191x->lock);
 return ret;
}
