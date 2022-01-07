
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; } ;
struct ad5064_state {int* dac_cache; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5064_get_vref (struct ad5064_state*,struct iio_chan_spec const*) ;
 struct ad5064_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5064_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad5064_state *st = iio_priv(indio_dev);
 int scale_uv;

 switch (m) {
 case 129:
  *val = st->dac_cache[chan->channel];
  return IIO_VAL_INT;
 case 128:
  scale_uv = ad5064_get_vref(st, chan);
  if (scale_uv < 0)
   return scale_uv;

  *val = scale_uv / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  break;
 }
 return -EINVAL;
}
