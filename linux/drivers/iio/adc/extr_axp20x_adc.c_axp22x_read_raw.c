
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int axp22x_adc_raw (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int axp22x_adc_scale (struct iio_chan_spec const*,int*,int*) ;

__attribute__((used)) static int axp22x_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan, int *val,
      int *val2, long mask)
{
 switch (mask) {
 case 130:
  *val = -2677;
  return IIO_VAL_INT;

 case 128:
  return axp22x_adc_scale(chan, val, val2);

 case 129:
  return axp22x_adc_raw(indio_dev, chan, val);

 default:
  return -EINVAL;
 }
}
