
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_adc_data {int ref; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;





 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ti_adc_data* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;
 int ti_adc_read_measurement (struct ti_adc_data*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int ti_adc_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct ti_adc_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = ti_adc_read_measurement(data, chan, val);
  iio_device_release_direct_mode(indio_dev);

  if (ret)
   return ret;

  return IIO_VAL_INT;
 case 128:
  ret = regulator_get_voltage(data->ref);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = chan->scan_type.realbits;

  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  *val = 1 << (chan->scan_type.realbits - 1);
  return IIO_VAL_INT;
 }

 return 0;
}
