
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm3323_data {int mutex; } ;


 int EINVAL ;

 int cm3323_set_it_bits (struct cm3323_data*,int,int) ;
 struct cm3323_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cm3323_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int val,
       int val2, long mask)
{
 struct cm3323_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  mutex_lock(&data->mutex);
  ret = cm3323_set_it_bits(data, val, val2);
  mutex_unlock(&data->mutex);

  return ret;
 default:
  return -EINVAL;
 }
}
