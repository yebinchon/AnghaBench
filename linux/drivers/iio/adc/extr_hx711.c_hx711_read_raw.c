
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct hx711_data {int lock; int gain_set; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int hx711_get_gain_to_scale (int ) ;
 int hx711_reset_read (struct hx711_data*,int ) ;
 struct hx711_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hx711_read_raw(struct iio_dev *indio_dev,
    const struct iio_chan_spec *chan,
    int *val, int *val2, long mask)
{
 struct hx711_data *hx711_data = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  mutex_lock(&hx711_data->lock);

  *val = hx711_reset_read(hx711_data, chan->channel);

  mutex_unlock(&hx711_data->lock);

  if (*val < 0)
   return *val;
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  mutex_lock(&hx711_data->lock);

  *val2 = hx711_get_gain_to_scale(hx711_data->gain_set);

  mutex_unlock(&hx711_data->lock);

  return IIO_VAL_INT_PLUS_NANO;
 default:
  return -EINVAL;
 }
}
