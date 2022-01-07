
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t5403_data {int mode; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 struct t5403_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* t5403_pressure_conv_ms ;

__attribute__((used)) static int t5403_write_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int val, int val2, long mask)
{
 struct t5403_data *data = iio_priv(indio_dev);
 int i;

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;
  for (i = 0; i < ARRAY_SIZE(t5403_pressure_conv_ms); i++)
   if (val2 == t5403_pressure_conv_ms[i] * 1000) {
    mutex_lock(&data->lock);
    data->mode = i;
    mutex_unlock(&data->lock);
    return 0;
   }
  return -EINVAL;
 default:
  return -EINVAL;
 }
}
