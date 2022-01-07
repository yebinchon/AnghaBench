
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m62332_data {int* raw; int vcc; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct m62332_data* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int m62332_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long mask)
{
 struct m62332_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:

  ret = regulator_get_voltage(data->vcc);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = 8;

  return IIO_VAL_FRACTIONAL_LOG2;
 case 129:
  *val = data->raw[chan->channel];

  return IIO_VAL_INT;
 case 130:
  *val = 1;

  return IIO_VAL_INT;
 default:
  break;
 }

 return -EINVAL;
}
