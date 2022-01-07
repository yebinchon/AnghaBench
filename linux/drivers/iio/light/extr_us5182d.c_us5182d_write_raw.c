
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int us5182d_apply_scale (struct us5182d_data*,int) ;
 int* us5182d_scales ;

__attribute__((used)) static int us5182d_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int val,
        int val2, long mask)
{
 struct us5182d_data *data = iio_priv(indio_dev);
 int ret, i;

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;
  for (i = 0; i < ARRAY_SIZE(us5182d_scales); i++)
   if (val2 == us5182d_scales[i]) {
    mutex_lock(&data->lock);
    ret = us5182d_apply_scale(data, i);
    mutex_unlock(&data->lock);
    return ret;
   }
  break;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
