
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5504_state {int vref_mv; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5504_spi_read (struct ad5504_state*,int ) ;
 struct ad5504_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5504_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad5504_state *st = iio_priv(indio_dev);
 int ret;

 switch (m) {
 case 129:
  ret = ad5504_spi_read(st, chan->address);
  if (ret < 0)
   return ret;

  *val = ret;

  return IIO_VAL_INT;
 case 128:
  *val = st->vref_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
