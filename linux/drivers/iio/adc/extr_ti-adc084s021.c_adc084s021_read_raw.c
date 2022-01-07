
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; } ;
struct iio_chan_spec {int channel; TYPE_1__ scan_type; } ;
struct adc084s021 {int* tx_buf; int reg; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int adc084s021_adc_conversion (struct adc084s021*,int*) ;
 int be16_to_cpu (int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct adc084s021* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int adc084s021_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *channel, int *val,
      int *val2, long mask)
{
 struct adc084s021 *adc = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret < 0)
   return ret;

  ret = regulator_enable(adc->reg);
  if (ret) {
   iio_device_release_direct_mode(indio_dev);
   return ret;
  }

  adc->tx_buf[0] = channel->channel << 3;
  ret = adc084s021_adc_conversion(adc, val);
  iio_device_release_direct_mode(indio_dev);
  regulator_disable(adc->reg);
  if (ret < 0)
   return ret;

  *val = be16_to_cpu(*val);
  *val = (*val >> channel->scan_type.shift) & 0xff;

  return IIO_VAL_INT;
 case 128:
  ret = regulator_enable(adc->reg);
  if (ret)
   return ret;

  ret = regulator_get_voltage(adc->reg);
  regulator_disable(adc->reg);
  if (ret < 0)
   return ret;

  *val = ret / 1000;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
