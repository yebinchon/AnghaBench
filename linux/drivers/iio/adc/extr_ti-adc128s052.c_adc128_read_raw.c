
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct adc128 {int reg; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int adc128_adc_conversion (struct adc128*,int ) ;
 struct adc128* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int adc128_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *channel, int *val,
      int *val2, long mask)
{
 struct adc128 *adc = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:

  ret = adc128_adc_conversion(adc, channel->channel);
  if (ret < 0)
   return ret;

  *val = ret;
  return IIO_VAL_INT;

 case 128:

  ret = regulator_get_voltage(adc->reg);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = 12;
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }

}
