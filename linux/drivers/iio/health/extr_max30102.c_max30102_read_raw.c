
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int dummy; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct max30102_data* iio_priv (struct iio_dev*) ;
 int max30102_get_temp (struct max30102_data*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max30102_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct max30102_data *data = iio_priv(indio_dev);
 int ret = -EINVAL;

 switch (mask) {
 case 129:




  mutex_lock(&indio_dev->mlock);
  if (!iio_buffer_enabled(indio_dev))
   ret = max30102_get_temp(data, val, 1);
  else
   ret = max30102_get_temp(data, val, 0);
  mutex_unlock(&indio_dev->mlock);
  if (ret)
   return ret;

  ret = IIO_VAL_INT;
  break;
 case 128:
  *val = 1000;
  *val2 = 16;
  ret = IIO_VAL_FRACTIONAL;
  break;
 }

 return ret;
}
