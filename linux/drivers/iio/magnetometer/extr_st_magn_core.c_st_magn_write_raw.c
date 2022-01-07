
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int st_sensors_set_fullscale_by_gain (struct iio_dev*,int) ;
 int st_sensors_set_odr (struct iio_dev*,int) ;

__attribute__((used)) static int st_magn_write_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 int err;

 switch (mask) {
 case 128:
  err = st_sensors_set_fullscale_by_gain(indio_dev, val2);
  break;
 case 129:
  if (val2)
   return -EINVAL;
  mutex_lock(&indio_dev->mlock);
  err = st_sensors_set_odr(indio_dev, val);
  mutex_unlock(&indio_dev->mlock);
  return err;
 default:
  err = -EINVAL;
 }

 return err;
}
