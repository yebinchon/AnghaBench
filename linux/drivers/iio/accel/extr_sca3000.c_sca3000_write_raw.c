
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_write_3db_freq (struct sca3000_state*,int) ;
 int sca3000_write_raw_samp_freq (struct sca3000_state*,int) ;

__attribute__((used)) static int sca3000_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val2)
   return -EINVAL;
  mutex_lock(&st->lock);
  ret = sca3000_write_raw_samp_freq(st, val);
  mutex_unlock(&st->lock);
  return ret;
 case 129:
  if (val2)
   return -EINVAL;
  mutex_lock(&st->lock);
  ret = sca3000_write_3db_freq(st, val);
  mutex_unlock(&st->lock);
  return ret;
 default:
  return -EINVAL;
 }

 return ret;
}
