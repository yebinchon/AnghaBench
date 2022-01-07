
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int min; int max; } ;
struct ad5758_state {TYPE_1__ out_range; int lock; } ;


 int AD5758_DAC_INPUT ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5758_spi_reg_read (struct ad5758_state*,int ) ;
 struct ad5758_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5758_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long info)
{
 struct ad5758_state *st = iio_priv(indio_dev);
 int max, min, ret;

 switch (info) {
 case 129:
  mutex_lock(&st->lock);
  ret = ad5758_spi_reg_read(st, AD5758_DAC_INPUT);
  mutex_unlock(&st->lock);
  if (ret < 0)
   return ret;

  *val = ret;
  return IIO_VAL_INT;
 case 128:
  min = st->out_range.min;
  max = st->out_range.max;
  *val = (max - min) / 1000;
  *val2 = 16;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  min = st->out_range.min;
  max = st->out_range.max;
  *val = ((min * (1 << 16)) / (max - min)) / 1000;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
