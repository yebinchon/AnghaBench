
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;
struct apds9960_data {int als_adc_int_us; size_t pxs_gain; size_t als_gain; int lock; int regmap; scalar_t__ gesture_mode_running; } ;
typedef int __le16 ;


 int EBUSY ;
 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int* apds9960_als_gain_map ;
 int* apds9960_pxs_gain_map ;
 int apds9960_set_power_state (struct apds9960_data*,int) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int apds9960_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct apds9960_data *data = iio_priv(indio_dev);
 __le16 buf;
 int ret = -EINVAL;

 if (data->gesture_mode_running)
  return -EBUSY;

 switch (mask) {
 case 131:
  apds9960_set_power_state(data, 1);
  switch (chan->type) {
  case 128:
   ret = regmap_read(data->regmap, chan->address, val);
   if (!ret)
    ret = IIO_VAL_INT;
   break;
  case 129:
   ret = regmap_bulk_read(data->regmap, chan->address,
            &buf, 2);
   if (!ret) {
    ret = IIO_VAL_INT;
    *val = le16_to_cpu(buf);
   }
   break;
  default:
   ret = -EINVAL;
  }
  apds9960_set_power_state(data, 0);
  break;
 case 132:

  mutex_lock(&data->lock);
  switch (chan->type) {
  case 129:
   *val = 0;
   *val2 = data->als_adc_int_us;
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;
  default:
   ret = -EINVAL;
  }
  mutex_unlock(&data->lock);
  break;
 case 130:
  mutex_lock(&data->lock);
  switch (chan->type) {
  case 128:
   *val = apds9960_pxs_gain_map[data->pxs_gain];
   ret = IIO_VAL_INT;
   break;
  case 129:
   *val = apds9960_als_gain_map[data->als_gain];
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
  }
  mutex_unlock(&data->lock);
  break;
 }

 return ret;
}
