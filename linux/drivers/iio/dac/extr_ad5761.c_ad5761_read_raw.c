
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad5761_state {int vref; size_t range; } ;
struct TYPE_4__ {int m; int c; } ;


 int AD5761_ADDR_DAC_READ ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 TYPE_2__* ad5761_range_params ;
 int ad5761_spi_read (struct iio_dev*,int ,int*) ;
 struct ad5761_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5761_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long mask)
{
 struct ad5761_state *st;
 int ret;
 u16 aux;

 switch (mask) {
 case 129:
  ret = ad5761_spi_read(indio_dev, AD5761_ADDR_DAC_READ, &aux);
  if (ret)
   return ret;
  *val = aux >> chan->scan_type.shift;
  return IIO_VAL_INT;
 case 128:
  st = iio_priv(indio_dev);
  *val = st->vref * ad5761_range_params[st->range].m;
  *val /= 10;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 130:
  st = iio_priv(indio_dev);
  *val = -(1 << chan->scan_type.realbits);
  *val *= ad5761_range_params[st->range].c;
  *val /= ad5761_range_params[st->range].m;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
