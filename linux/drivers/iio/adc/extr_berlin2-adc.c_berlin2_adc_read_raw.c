
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;


 int EINVAL ;


 int IIO_TEMP ;
 int IIO_VAL_INT ;
 int IIO_VOLTAGE ;
 int berlin2_adc_read (struct iio_dev*,int ) ;
 int berlin2_adc_tsen_read (struct iio_dev*) ;

__attribute__((used)) static int berlin2_adc_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan, int *val,
    int *val2, long mask)
{
 int temp;

 switch (mask) {
 case 128:
  if (chan->type != IIO_VOLTAGE)
   return -EINVAL;

  *val = berlin2_adc_read(indio_dev, chan->channel);
  if (*val < 0)
   return *val;

  return IIO_VAL_INT;
 case 129:
  if (chan->type != IIO_TEMP)
   return -EINVAL;

  temp = berlin2_adc_tsen_read(indio_dev);
  if (temp < 0)
   return temp;

  if (temp > 2047)
   temp -= 4096;


  *val = ((temp * 100000) / 264 - 270000);
  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
