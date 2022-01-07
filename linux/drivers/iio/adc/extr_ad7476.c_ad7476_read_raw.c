
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_8__ {int realbits; } ;
struct iio_chan_spec {TYPE_4__ scan_type; } ;
struct ad7476_state {TYPE_3__* chip_info; int reg; } ;
struct TYPE_7__ {int int_vref_uv; TYPE_2__* channel; } ;
struct TYPE_5__ {int shift; int realbits; } ;
struct TYPE_6__ {TYPE_1__ scan_type; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad7476_scan_direct (struct ad7476_state*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7476_state* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad7476_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 int ret;
 struct ad7476_state *st = iio_priv(indio_dev);
 int scale_uv;

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = ad7476_scan_direct(st);
  iio_device_release_direct_mode(indio_dev);

  if (ret < 0)
   return ret;
  *val = (ret >> st->chip_info->channel[0].scan_type.shift) &
   GENMASK(st->chip_info->channel[0].scan_type.realbits - 1, 0);
  return IIO_VAL_INT;
 case 128:
  if (!st->chip_info->int_vref_uv) {
   scale_uv = regulator_get_voltage(st->reg);
   if (scale_uv < 0)
    return scale_uv;
  } else {
   scale_uv = st->chip_info->int_vref_uv;
  }
  *val = scale_uv / 1000;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
