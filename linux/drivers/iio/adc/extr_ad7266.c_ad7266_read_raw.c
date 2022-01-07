
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {char sign; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad7266_state {unsigned long vref_mv; int mode; int range; } ;


 int AD7266_MODE_DIFF ;
 int AD7266_RANGE_2VREF ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad7266_read_single (struct ad7266_state*,int*,int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7266_state* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int ad7266_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long m)
{
 struct ad7266_state *st = iio_priv(indio_dev);
 unsigned long scale_mv;
 int ret;

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = ad7266_read_single(st, val, chan->address);
  iio_device_release_direct_mode(indio_dev);

  *val = (*val >> 2) & 0xfff;
  if (chan->scan_type.sign == 's')
   *val = sign_extend32(*val, 11);

  return IIO_VAL_INT;
 case 128:
  scale_mv = st->vref_mv;
  if (st->mode == AD7266_MODE_DIFF)
   scale_mv *= 2;
  if (st->range == AD7266_RANGE_2VREF)
   scale_mv *= 2;

  *val = scale_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  if (st->range == AD7266_RANGE_2VREF &&
   st->mode != AD7266_MODE_DIFF)
   *val = 2048;
  else
   *val = 0;
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
