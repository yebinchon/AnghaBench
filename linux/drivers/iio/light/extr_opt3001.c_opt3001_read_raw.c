
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt3001 {scalar_t__ mode; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int EBUSY ;
 int EINVAL ;


 scalar_t__ IIO_LIGHT ;
 scalar_t__ OPT3001_CONFIGURATION_M_CONTINUOUS ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opt3001_get_int_time (struct opt3001*,int*,int*) ;
 int opt3001_get_lux (struct opt3001*,int*,int*) ;

__attribute__((used)) static int opt3001_read_raw(struct iio_dev *iio,
  struct iio_chan_spec const *chan, int *val, int *val2,
  long mask)
{
 struct opt3001 *opt = iio_priv(iio);
 int ret;

 if (opt->mode == OPT3001_CONFIGURATION_M_CONTINUOUS)
  return -EBUSY;

 if (chan->type != IIO_LIGHT)
  return -EINVAL;

 mutex_lock(&opt->lock);

 switch (mask) {
 case 128:
  ret = opt3001_get_lux(opt, val, val2);
  break;
 case 129:
  ret = opt3001_get_int_time(opt, val, val2);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&opt->lock);

 return ret;
}
