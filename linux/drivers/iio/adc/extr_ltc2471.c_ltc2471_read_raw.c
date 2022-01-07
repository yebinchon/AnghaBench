
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2471_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int differential; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int LTC2471_VREF ;
 struct ltc2471_data* iio_priv (struct iio_dev*) ;
 int ltc2471_get_value (int ) ;

__attribute__((used)) static int ltc2471_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long info)
{
 struct ltc2471_data *data = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 129:
  ret = ltc2471_get_value(data->client);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;

 case 128:
  if (chan->differential)

   *val = 2 * LTC2471_VREF;
  else

   *val = LTC2471_VREF;
  *val2 = 16;
  return IIO_VAL_FRACTIONAL_LOG2;

 case 130:

  *val = -LTC2471_VREF;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
