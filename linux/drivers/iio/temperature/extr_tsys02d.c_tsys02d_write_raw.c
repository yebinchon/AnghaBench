
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_ht_dev {int res_index; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;

 struct ms_ht_dev* iio_priv (struct iio_dev*) ;
 int ms_sensors_write_resolution (struct ms_ht_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* tsys02d_samp_freq ;

__attribute__((used)) static int tsys02d_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct ms_ht_dev *dev_data = iio_priv(indio_dev);
 int i, ret;

 switch (mask) {
 case 128:
  i = ARRAY_SIZE(tsys02d_samp_freq);
  while (i-- > 0)
   if (val == tsys02d_samp_freq[i])
    break;
  if (i < 0)
   return -EINVAL;
  mutex_lock(&dev_data->lock);
  dev_data->res_index = i;
  ret = ms_sensors_write_resolution(dev_data, i);
  mutex_unlock(&dev_data->lock);

  return ret;
 default:
  return -EINVAL;
 }
}
