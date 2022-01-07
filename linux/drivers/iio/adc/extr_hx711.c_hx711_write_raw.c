
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct hx711_data {int gain_set; int gain_chan_a; int lock; } ;


 int EINVAL ;

 int hx711_get_scale_to_gain (int) ;
 int hx711_read (struct hx711_data*) ;
 struct hx711_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hx711_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int val,
    int val2,
    long mask)
{
 struct hx711_data *hx711_data = iio_priv(indio_dev);
 int ret;
 int gain;

 switch (mask) {
 case 128:




  if (val != 0)
   return -EINVAL;

  mutex_lock(&hx711_data->lock);

  gain = hx711_get_scale_to_gain(val2);
  if (gain < 0) {
   mutex_unlock(&hx711_data->lock);
   return gain;
  }

  if (gain != hx711_data->gain_set) {
   hx711_data->gain_set = gain;
   if (gain != 32)
    hx711_data->gain_chan_a = gain;

   ret = hx711_read(hx711_data);
   if (ret < 0) {
    mutex_unlock(&hx711_data->lock);
    return ret;
   }
  }

  mutex_unlock(&hx711_data->lock);
  return 0;
 default:
  return -EINVAL;
 }

 return 0;
}
