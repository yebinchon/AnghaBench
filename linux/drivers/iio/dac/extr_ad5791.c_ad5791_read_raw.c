
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5791_state {int vref_mv; int vref_neg_mv; } ;


 int AD5791_DAC_MASK ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int ad5791_spi_read (struct ad5791_state*,int ,int*) ;
 int do_div (int,int) ;
 struct ad5791_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5791_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad5791_state *st = iio_priv(indio_dev);
 u64 val64;
 int ret;

 switch (m) {
 case 129:
  ret = ad5791_spi_read(st, chan->address, val);
  if (ret)
   return ret;
  *val &= AD5791_DAC_MASK;
  *val >>= chan->scan_type.shift;
  return IIO_VAL_INT;
 case 128:
  *val = st->vref_mv;
  *val2 = (1 << chan->scan_type.realbits) - 1;
  return IIO_VAL_FRACTIONAL;
 case 130:
  val64 = (((u64)st->vref_neg_mv) << chan->scan_type.realbits);
  do_div(val64, st->vref_mv);
  *val = -val64;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

}
