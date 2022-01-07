
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int type; int channel; } ;


 int AXP22X_BATT_V ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;


__attribute__((used)) static int axp22x_adc_scale(struct iio_chan_spec const *chan, int *val,
       int *val2)
{
 switch (chan->type) {
 case 128:
  if (chan->channel != AXP22X_BATT_V)
   return -EINVAL;

  *val = 1;
  *val2 = 100000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 130:
  *val = 0;
  *val2 = 500000;
  return IIO_VAL_INT_PLUS_MICRO;

 case 129:
  *val = 100;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
