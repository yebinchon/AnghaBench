
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int type; int address; } ;
struct ad7298_state {int dummy; } ;


 int AD7298_CH_TEMP ;
 int EINVAL ;
 int GENMASK (int ,int ) ;




 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 int ad7298_get_ref_voltage (struct ad7298_state*) ;
 int ad7298_scan_direct (struct ad7298_state*,int ) ;
 int ad7298_scan_temp (struct ad7298_state*,int*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7298_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7298_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 int ret;
 struct ad7298_state *st = iio_priv(indio_dev);

 switch (m) {
 case 131:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  if (chan->address == AD7298_CH_TEMP)
   ret = ad7298_scan_temp(st, val);
  else
   ret = ad7298_scan_direct(st, chan->address);

  iio_device_release_direct_mode(indio_dev);

  if (ret < 0)
   return ret;

  if (chan->address != AD7298_CH_TEMP)
   *val = ret & GENMASK(chan->scan_type.realbits - 1, 0);

  return IIO_VAL_INT;
 case 130:
  switch (chan->type) {
  case 128:
   *val = ad7298_get_ref_voltage(st);
   *val2 = chan->scan_type.realbits;
   return IIO_VAL_FRACTIONAL_LOG2;
  case 129:
   *val = ad7298_get_ref_voltage(st);
   *val2 = 10;
   return IIO_VAL_FRACTIONAL;
  default:
   return -EINVAL;
  }
 case 132:
  *val = 1093 - 2732500 / ad7298_get_ref_voltage(st);
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
