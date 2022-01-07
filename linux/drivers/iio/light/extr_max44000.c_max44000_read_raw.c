
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44000_data {int lock; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;






 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int MAX44000_ALSPGA_MAX_SHIFT ;
 int MAX44000_ALS_TO_LUX_DEFAULT_FRACTION_LOG2 ;
 int MAX44000_REG_PRX_DATA ;
 struct max44000_data* iio_priv (struct iio_dev*) ;
 int* max44000_alspga_shift ;
 int* max44000_int_time_avail_ns_array ;
 int max44000_read_alspga (struct max44000_data*) ;
 int max44000_read_alstim (struct max44000_data*) ;
 int max44000_read_alsval (struct max44000_data*) ;
 int max44000_read_led_current_raw (struct max44000_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max44000_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct max44000_data *data = iio_priv(indio_dev);
 int alstim, alspga;
 unsigned int regval;
 int ret;

 switch (mask) {
 case 132:
  switch (chan->type) {
  case 129:
   mutex_lock(&data->lock);
   ret = max44000_read_alsval(data);
   mutex_unlock(&data->lock);
   if (ret < 0)
    return ret;
   *val = ret;
   return IIO_VAL_INT;

  case 128:
   mutex_lock(&data->lock);
   ret = regmap_read(data->regmap, MAX44000_REG_PRX_DATA, &regval);
   mutex_unlock(&data->lock);
   if (ret < 0)
    return ret;
   *val = regval;
   return IIO_VAL_INT;

  case 130:
   mutex_lock(&data->lock);
   ret = max44000_read_led_current_raw(data);
   mutex_unlock(&data->lock);
   if (ret < 0)
    return ret;
   *val = ret;
   return IIO_VAL_INT;

  default:
   return -EINVAL;
  }

 case 131:
  switch (chan->type) {
  case 130:

   *val = 10;
   return IIO_VAL_INT;

  case 129:
   mutex_lock(&data->lock);
   alspga = ret = max44000_read_alspga(data);
   mutex_unlock(&data->lock);
   if (ret < 0)
    return ret;


   *val = (1 << MAX44000_ALSPGA_MAX_SHIFT);
   *val2 = MAX44000_ALS_TO_LUX_DEFAULT_FRACTION_LOG2
     + MAX44000_ALSPGA_MAX_SHIFT
     - max44000_alspga_shift[alspga];
   return IIO_VAL_FRACTIONAL_LOG2;

  default:
   return -EINVAL;
  }

 case 133:
  mutex_lock(&data->lock);
  alstim = ret = max44000_read_alstim(data);
  mutex_unlock(&data->lock);

  if (ret < 0)
   return ret;
  *val = 0;
  *val2 = max44000_int_time_avail_ns_array[alstim];
  return IIO_VAL_INT_PLUS_NANO;

 default:
  return -EINVAL;
 }
}
