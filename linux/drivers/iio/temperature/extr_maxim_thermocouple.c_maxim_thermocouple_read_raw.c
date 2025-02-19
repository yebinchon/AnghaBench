
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maxim_thermocouple_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct maxim_thermocouple_data* iio_priv (struct iio_dev*) ;
 int maxim_thermocouple_read (struct maxim_thermocouple_data*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int maxim_thermocouple_read_raw(struct iio_dev *indio_dev,
           struct iio_chan_spec const *chan,
           int *val, int *val2, long mask)
{
 struct maxim_thermocouple_data *data = iio_priv(indio_dev);
 int ret = -EINVAL;

 switch (mask) {
 case 130:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = maxim_thermocouple_read(data, chan, val);
  iio_device_release_direct_mode(indio_dev);

  if (!ret)
   return IIO_VAL_INT;

  break;
 case 129:
  switch (chan->channel2) {
  case 128:
   *val = 62;
   *val2 = 500000;
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;
  default:
   *val = 250;
   ret = IIO_VAL_INT;
  };
  break;
 }

 return ret;
}
