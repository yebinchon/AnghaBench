
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int type; int address; } ;
struct adc108s102_state {int va_millivolt; } ;


 int ADC108S102_RES_DATA (int) ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IIO_VOLTAGE ;
 int adc108s102_scan_direct (struct adc108s102_state*,int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct adc108s102_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adc108s102_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int *val, int *val2, long m)
{
 struct adc108s102_state *st = iio_priv(indio_dev);
 int ret;

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = adc108s102_scan_direct(st, chan->address);

  iio_device_release_direct_mode(indio_dev);

  if (ret < 0)
   return ret;

  *val = ADC108S102_RES_DATA(ret);

  return IIO_VAL_INT;
 case 128:
  if (chan->type != IIO_VOLTAGE)
   break;

  *val = st->va_millivolt;
  *val2 = chan->scan_type.realbits;

  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  break;
 }

 return -EINVAL;
}
