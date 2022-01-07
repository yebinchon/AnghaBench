
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;
struct apds9300_data {int mutex; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int apds9300_calculate_lux (int,int) ;
 int apds9300_get_adc_val (struct apds9300_data*,int) ;
 struct apds9300_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int apds9300_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan, int *val, int *val2,
  long mask)
{
 int ch0, ch1, ret = -EINVAL;
 struct apds9300_data *data = iio_priv(indio_dev);

 mutex_lock(&data->mutex);
 switch (chan->type) {
 case 128:
  ch0 = apds9300_get_adc_val(data, 0);
  if (ch0 < 0) {
   ret = ch0;
   break;
  }
  ch1 = apds9300_get_adc_val(data, 1);
  if (ch1 < 0) {
   ret = ch1;
   break;
  }
  *val = apds9300_calculate_lux(ch0, ch1);
  ret = IIO_VAL_INT;
  break;
 case 129:
  ret = apds9300_get_adc_val(data, chan->channel);
  if (ret < 0)
   break;
  *val = ret;
  ret = IIO_VAL_INT;
  break;
 default:
  break;
 }
 mutex_unlock(&data->mutex);

 return ret;
}
