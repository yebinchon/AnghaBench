
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
struct TYPE_2__ {scalar_t__ rx_buf; } ;
struct max3191x_chip {int lock; TYPE_1__ xfer; } ;
struct gpio_chip {int ngpio; } ;


 int BITS_PER_LONG ;
 int EIO ;
 int MAX3191X_NGPIO ;
 int find_next_bit (unsigned long*,int,int) ;
 struct max3191x_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ max3191x_chip_is_faulting (struct max3191x_chip*,unsigned int) ;
 int max3191x_readout_locked (struct max3191x_chip*) ;
 int max3191x_wordlen (struct max3191x_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long round_down (int,int) ;

__attribute__((used)) static int max3191x_get_multiple(struct gpio_chip *gpio, unsigned long *mask,
     unsigned long *bits)
{
 struct max3191x_chip *max3191x = gpiochip_get_data(gpio);
 int ret, bit = 0, wordlen = max3191x_wordlen(max3191x);

 mutex_lock(&max3191x->lock);
 ret = max3191x_readout_locked(max3191x);
 if (ret)
  goto out_unlock;

 while ((bit = find_next_bit(mask, gpio->ngpio, bit)) != gpio->ngpio) {
  unsigned int chipnum = bit / MAX3191X_NGPIO;
  unsigned long in, shift, index;

  if (max3191x_chip_is_faulting(max3191x, chipnum)) {
   ret = -EIO;
   goto out_unlock;
  }

  in = ((u8 *)max3191x->xfer.rx_buf)[chipnum * wordlen];
  shift = round_down(bit % BITS_PER_LONG, MAX3191X_NGPIO);
  index = bit / BITS_PER_LONG;
  bits[index] &= ~(mask[index] & (0xff << shift));
  bits[index] |= mask[index] & (in << shift);

  bit = (chipnum + 1) * MAX3191X_NGPIO;
 }

out_unlock:
 mutex_unlock(&max3191x->lock);
 return ret;
}
