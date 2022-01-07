
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int scan_index; } ;
struct ad799x_state {int vref; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad799x_scan_direct (struct ad799x_state*,int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad799x_state* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad799x_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 int ret;
 struct ad799x_state *st = iio_priv(indio_dev);

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = ad799x_scan_direct(st, chan->scan_index);
  iio_device_release_direct_mode(indio_dev);

  if (ret < 0)
   return ret;
  *val = (ret >> chan->scan_type.shift) &
   GENMASK(chan->scan_type.realbits - 1, 0);
  return IIO_VAL_INT;
 case 128:
  ret = regulator_get_voltage(st->vref);
  if (ret < 0)
   return ret;
  *val = ret / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
