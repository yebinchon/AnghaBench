
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stx104_iio {int* chan_out_states; int base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; int output; } ;


 int EINVAL ;


 struct stx104_iio* iio_priv (struct iio_dev*) ;
 int outb (int,int ) ;
 int outw (int,int ) ;

__attribute__((used)) static int stx104_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct stx104_iio *const priv = iio_priv(indio_dev);

 switch (mask) {
 case 129:

  switch (val) {
  case 1:
   outb(0, priv->base + 11);
   break;
  case 2:
   outb(1, priv->base + 11);
   break;
  case 4:
   outb(2, priv->base + 11);
   break;
  case 8:
   outb(3, priv->base + 11);
   break;
  default:
   return -EINVAL;
  }

  return 0;
 case 128:
  if (chan->output) {

   if ((unsigned int)val > 65535)
    return -EINVAL;

   priv->chan_out_states[chan->channel] = val;
   outw(val, priv->base + 4 + 2 * chan->channel);

   return 0;
  }
  return -EINVAL;
 }

 return -EINVAL;
}
