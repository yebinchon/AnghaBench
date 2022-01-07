
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt3001 {scalar_t__ mode; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int EBUSY ;
 int EINVAL ;
 long IIO_CHAN_INFO_INT_TIME ;
 scalar_t__ IIO_LIGHT ;
 scalar_t__ OPT3001_CONFIGURATION_M_CONTINUOUS ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opt3001_set_int_time (struct opt3001*,int) ;

__attribute__((used)) static int opt3001_write_raw(struct iio_dev *iio,
  struct iio_chan_spec const *chan, int val, int val2,
  long mask)
{
 struct opt3001 *opt = iio_priv(iio);
 int ret;

 if (opt->mode == OPT3001_CONFIGURATION_M_CONTINUOUS)
  return -EBUSY;

 if (chan->type != IIO_LIGHT)
  return -EINVAL;

 if (mask != IIO_CHAN_INFO_INT_TIME)
  return -EINVAL;

 if (val != 0)
  return -EINVAL;

 mutex_lock(&opt->lock);
 ret = opt3001_set_int_time(opt, val2);
 mutex_unlock(&opt->lock);

 return ret;
}
