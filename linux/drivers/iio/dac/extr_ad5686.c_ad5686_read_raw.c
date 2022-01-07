
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5686_state {int (* read ) (struct ad5686_state*,int ) ;int vref_mv; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ad5686_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5686_state*,int ) ;

__attribute__((used)) static int ad5686_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad5686_state *st = iio_priv(indio_dev);
 int ret;

 switch (m) {
 case 129:
  mutex_lock(&indio_dev->mlock);
  ret = st->read(st, chan->address);
  mutex_unlock(&indio_dev->mlock);
  if (ret < 0)
   return ret;
  *val = (ret >> chan->scan_type.shift) &
   GENMASK(chan->scan_type.realbits - 1, 0);
  return IIO_VAL_INT;
 case 128:
  *val = st->vref_mv;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
