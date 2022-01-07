
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int dummy; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct max30100_data* iio_priv (struct iio_dev*) ;
 int max30100_get_temp (struct max30100_data*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max30100_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct max30100_data *data = iio_priv(indio_dev);
 int ret = -EINVAL;

 switch (mask) {
 case 129:




  mutex_lock(&indio_dev->mlock);

  if (!iio_buffer_enabled(indio_dev))
   ret = -EAGAIN;
  else {
   ret = max30100_get_temp(data, val);
   if (!ret)
    ret = IIO_VAL_INT;

  }

  mutex_unlock(&indio_dev->mlock);
  break;
 case 128:
  *val = 1;
  *val2 = 16;
  ret = IIO_VAL_FRACTIONAL;
  break;
 }

 return ret;
}
