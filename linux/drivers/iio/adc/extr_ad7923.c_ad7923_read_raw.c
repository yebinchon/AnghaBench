
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;
struct ad7923_state {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int EXTRACT (int,int,int) ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad7923_get_range (struct ad7923_state*) ;
 int ad7923_scan_direct (struct ad7923_state*,int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7923_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7923_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 int ret;
 struct ad7923_state *st = iio_priv(indio_dev);

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = ad7923_scan_direct(st, chan->address);
  iio_device_release_direct_mode(indio_dev);

  if (ret < 0)
   return ret;

  if (chan->address == EXTRACT(ret, 12, 4))
   *val = EXTRACT(ret, 0, 12);
  else
   return -EIO;

  return IIO_VAL_INT;
 case 128:
  ret = ad7923_get_range(st);
  if (ret < 0)
   return ret;
  *val = ret;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
