
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad8366_state {int* ch; int lock; int type; } ;


 int EINVAL ;




 int IIO_VAL_INT_PLUS_MICRO_DB ;
 struct ad8366_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad8366_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad8366_state *st = iio_priv(indio_dev);
 int ret;
 int code, gain = 0;

 mutex_lock(&st->lock);
 switch (m) {
 case 128:
  code = st->ch[chan->channel];

  switch (st->type) {
  case 131:
   gain = code * 253 + 4500;
   break;
  case 130:
   gain = 15000 - code * 1000;
   break;
  case 129:
   gain = 20000 - 31500 + code * 500;
   break;
  }


  *val = gain / 1000;
  *val2 = (gain % 1000) * 1000;

  ret = IIO_VAL_INT_PLUS_MICRO_DB;
  break;
 default:
  ret = -EINVAL;
 }
 mutex_unlock(&st->lock);

 return ret;
}
