
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max31856_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct max31856_data* iio_priv (struct iio_dev*) ;
 int max31856_thermocouple_read (struct max31856_data*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int max31856_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct max31856_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  ret = max31856_thermocouple_read(data, chan, val);
  if (ret)
   return ret;
  return IIO_VAL_INT;
 case 129:
  switch (chan->channel2) {
  case 128:

   *val = 15;
   *val2 = 625000;
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;
  default:

   *val = 7;
   *val2 = 812500;
   return IIO_VAL_INT_PLUS_MICRO;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
