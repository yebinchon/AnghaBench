
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad7768_state {int samp_freq; int vref; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad7768_scan_direct (struct iio_dev*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7768_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long info)
{
 struct ad7768_state *st = iio_priv(indio_dev);
 int scale_uv, ret;

 switch (info) {
 case 130:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = ad7768_scan_direct(indio_dev);
  if (ret >= 0)
   *val = ret;

  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 case 128:
  scale_uv = regulator_get_voltage(st->vref);
  if (scale_uv < 0)
   return scale_uv;

  *val = (scale_uv * 2) / 1000;
  *val2 = chan->scan_type.realbits;

  return IIO_VAL_FRACTIONAL_LOG2;

 case 129:
  *val = st->samp_freq;

  return IIO_VAL_INT;
 }

 return -EINVAL;
}
