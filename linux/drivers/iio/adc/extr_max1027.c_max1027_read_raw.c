
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1027_state {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_FRACTIONAL_LOG2 ;

 struct max1027_state* iio_priv (struct iio_dev*) ;
 int max1027_read_single_value (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max1027_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 int ret = 0;
 struct max1027_state *st = iio_priv(indio_dev);

 mutex_lock(&st->lock);

 switch (mask) {
 case 131:
  ret = max1027_read_single_value(indio_dev, chan, val);
  break;
 case 130:
  switch (chan->type) {
  case 129:
   *val = 1;
   *val2 = 8;
   ret = IIO_VAL_FRACTIONAL;
   break;
  case 128:
   *val = 2500;
   *val2 = 10;
   ret = IIO_VAL_FRACTIONAL_LOG2;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&st->lock);

 return ret;
}
