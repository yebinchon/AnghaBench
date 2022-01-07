
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc2632_state {int vref_mv; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;


 int EINVAL ;

 int IIO_VAL_FRACTIONAL_LOG2 ;
 struct ltc2632_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ltc2632_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long m)
{
 const struct ltc2632_state *st = iio_priv(indio_dev);

 switch (m) {
 case 128:
  *val = st->vref_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
