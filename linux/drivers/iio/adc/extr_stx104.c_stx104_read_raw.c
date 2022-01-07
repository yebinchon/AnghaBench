
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stx104_iio {int* chan_out_states; int base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; int output; } ;


 unsigned int BIT (int) ;
 int EINVAL ;




 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct stx104_iio* iio_priv (struct iio_dev*) ;
 unsigned int inb (int ) ;
 int inw (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static int stx104_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long mask)
{
 struct stx104_iio *const priv = iio_priv(indio_dev);
 unsigned int adc_config;
 int adbu;
 int gain;

 switch (mask) {
 case 131:

  adc_config = inb(priv->base + 11);
  gain = adc_config & 0x3;

  *val = 1 << gain;
  return IIO_VAL_INT;
 case 129:
  if (chan->output) {
   *val = priv->chan_out_states[chan->channel];
   return IIO_VAL_INT;
  }


  outb(chan->channel | (chan->channel << 4), priv->base + 2);


  outb(0, priv->base);
  while (inb(priv->base + 8) & BIT(7));

  *val = inw(priv->base);
  return IIO_VAL_INT;
 case 130:

  adc_config = inb(priv->base + 11);
  adbu = !(adc_config & BIT(2));

  *val = -32768 * adbu;
  return IIO_VAL_INT;
 case 128:

  adc_config = inb(priv->base + 11);
  adbu = !(adc_config & BIT(2));
  gain = adc_config & 0x3;

  *val = 5;
  *val2 = 15 - adbu + gain;
  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
}
