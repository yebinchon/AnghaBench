
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct dac5571_data {int* val; TYPE_1__* spec; int vref; } ;
struct TYPE_2__ {int resolution; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct dac5571_data* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int dac5571_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct dac5571_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  *val = data->val[chan->channel];
  return IIO_VAL_INT;

 case 128:
  ret = regulator_get_voltage(data->vref);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = data->spec->resolution;
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }
}
