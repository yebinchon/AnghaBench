
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ads8688_state {unsigned long vref_mv; size_t* range; int lock; } ;
struct TYPE_2__ {unsigned long scale; int offset; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 TYPE_1__* ads8688_range_def ;
 int ads8688_read (struct iio_dev*,size_t) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads8688_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long m)
{
 int ret, offset;
 unsigned long scale_mv;

 struct ads8688_state *st = iio_priv(indio_dev);

 mutex_lock(&st->lock);
 switch (m) {
 case 129:
  ret = ads8688_read(indio_dev, chan->channel);
  mutex_unlock(&st->lock);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  scale_mv = st->vref_mv;
  scale_mv *= ads8688_range_def[st->range[chan->channel]].scale;
  *val = 0;
  *val2 = scale_mv;
  mutex_unlock(&st->lock);
  return IIO_VAL_INT_PLUS_NANO;
 case 130:
  offset = ads8688_range_def[st->range[chan->channel]].offset;
  *val = offset;
  mutex_unlock(&st->lock);
  return IIO_VAL_INT;
 }
 mutex_unlock(&st->lock);

 return -EINVAL;
}
