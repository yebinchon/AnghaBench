
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ads7950_state {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;


 int EINVAL ;
 int EIO ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int TI_ADS7950_EXTRACT (int,int,int) ;
 struct ti_ads7950_state* iio_priv (struct iio_dev*) ;
 int ti_ads7950_get_range (struct ti_ads7950_state*) ;
 int ti_ads7950_scan_direct (struct iio_dev*,int) ;

__attribute__((used)) static int ti_ads7950_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int *val, int *val2, long m)
{
 struct ti_ads7950_state *st = iio_priv(indio_dev);
 int ret;

 switch (m) {
 case 129:
  ret = ti_ads7950_scan_direct(indio_dev, chan->address);
  if (ret < 0)
   return ret;

  if (chan->address != TI_ADS7950_EXTRACT(ret, 12, 4))
   return -EIO;

  *val = TI_ADS7950_EXTRACT(ret, chan->scan_type.shift,
       chan->scan_type.realbits);

  return IIO_VAL_INT;
 case 128:
  ret = ti_ads7950_get_range(st);
  if (ret < 0)
   return ret;

  *val = ret;
  *val2 = (1 << chan->scan_type.realbits) - 1;

  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
