
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_adc {TYPE_1__* common; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int realbits; } ;
struct iio_chan_spec {TYPE_2__ scan_type; int differential; int type; } ;
struct TYPE_3__ {int vref_mv; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IIO_VOLTAGE ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct stm32_adc* iio_priv (struct iio_dev*) ;
 int stm32_adc_single_conv (struct iio_dev*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int stm32_adc_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2, long mask)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  if (chan->type == IIO_VOLTAGE)
   ret = stm32_adc_single_conv(indio_dev, chan, val);
  else
   ret = -EINVAL;
  iio_device_release_direct_mode(indio_dev);
  return ret;

 case 128:
  if (chan->differential) {
   *val = adc->common->vref_mv * 2;
   *val2 = chan->scan_type.realbits;
  } else {
   *val = adc->common->vref_mv;
   *val2 = chan->scan_type.realbits;
  }
  return IIO_VAL_FRACTIONAL_LOG2;

 case 130:
  if (chan->differential)

   *val = -((1 << chan->scan_type.realbits) / 2);
  else
   *val = 0;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
