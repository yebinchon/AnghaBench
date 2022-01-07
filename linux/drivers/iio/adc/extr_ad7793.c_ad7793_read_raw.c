
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_3__ {int realbits; } ;
struct iio_chan_spec {int const type; TYPE_1__ scan_type; int differential; } ;
struct ad7793_state {int conf; int** scale_avail; int mode; TYPE_2__* chip_info; } ;
struct TYPE_4__ {int* sample_freq_avail; } ;


 int AD7793_CONF_UNIPOLAR ;
 size_t AD7793_MODE_RATE (int ) ;
 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;

 int ad_sigma_delta_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int do_div (unsigned long long,int) ;
 struct ad7793_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7793_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad7793_state *st = iio_priv(indio_dev);
 int ret;
 unsigned long long scale_uv;
 bool unipolar = !!(st->conf & AD7793_CONF_UNIPOLAR);

 switch (m) {
 case 132:
  ret = ad_sigma_delta_single_conversion(indio_dev, chan, val);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 case 130:
  switch (chan->type) {
  case 128:
   if (chan->differential) {
    *val = st->
     scale_avail[(st->conf >> 8) & 0x7][0];
    *val2 = st->
     scale_avail[(st->conf >> 8) & 0x7][1];
    return IIO_VAL_INT_PLUS_NANO;
   }

   scale_uv = (1170ULL * 1000000000ULL * 6ULL);
   break;
  case 129:

    scale_uv = 1444444444444444ULL;
   break;
  default:
   return -EINVAL;
  }

  scale_uv >>= (chan->scan_type.realbits - (unipolar ? 0 : 1));
  *val = 0;
  *val2 = scale_uv;
  return IIO_VAL_INT_PLUS_NANO;
 case 133:
  if (!unipolar)
   *val = -(1 << (chan->scan_type.realbits - 1));
  else
   *val = 0;


  if (chan->type == 129) {
   unsigned long long offset;
   unsigned int shift;

   shift = chan->scan_type.realbits - (unipolar ? 0 : 1);
   offset = 273ULL << shift;
   do_div(offset, 1444);
   *val -= offset;
  }
  return IIO_VAL_INT;
 case 131:
  *val = st->chip_info
          ->sample_freq_avail[AD7793_MODE_RATE(st->mode)];
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
