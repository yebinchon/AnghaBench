
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
struct hdc100x_data {int* adc_int_us; int lock; } ;


 int EINVAL ;




 int IIO_CURRENT ;
 int IIO_TEMP ;
 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int hdc100x_get_heater_status (struct hdc100x_data*) ;
 int hdc100x_get_measurement (struct hdc100x_data*,struct iio_chan_spec const*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct hdc100x_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdc100x_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int *val,
       int *val2, long mask)
{
 struct hdc100x_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129: {
  int ret;

  mutex_lock(&data->lock);
  if (chan->type == IIO_CURRENT) {
   *val = hdc100x_get_heater_status(data);
   ret = IIO_VAL_INT;
  } else {
   ret = iio_device_claim_direct_mode(indio_dev);
   if (ret) {
    mutex_unlock(&data->lock);
    return ret;
   }

   ret = hdc100x_get_measurement(data, chan);
   iio_device_release_direct_mode(indio_dev);
   if (ret >= 0) {
    *val = ret;
    ret = IIO_VAL_INT;
   }
  }
  mutex_unlock(&data->lock);
  return ret;
 }
 case 131:
  *val = 0;
  *val2 = data->adc_int_us[chan->address];
  return IIO_VAL_INT_PLUS_MICRO;
 case 128:
  if (chan->type == IIO_TEMP) {
   *val = 165000;
   *val2 = 65536;
   return IIO_VAL_FRACTIONAL;
  } else {
   *val = 100;
   *val2 = 65536;
   return IIO_VAL_FRACTIONAL;
  }
  break;
 case 130:
  *val = -15887;
  *val2 = 515151;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
