
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; } ;
struct bmc150_scale_info {int scale; int reg_range; } ;
struct bmc150_accel_data {int mutex; int range; TYPE_1__* chip_info; } ;
struct TYPE_2__ {struct bmc150_scale_info* scale_table; } ;


 int ARRAY_SIZE (struct bmc150_scale_info*) ;
 int BMC150_ACCEL_TEMP_CENTER_VAL ;
 int EBUSY ;
 int EINVAL ;






 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bmc150_accel_get_axis (struct bmc150_accel_data*,struct iio_chan_spec const*,int*) ;
 int bmc150_accel_get_bw (struct bmc150_accel_data*,int*,int*) ;
 int bmc150_accel_get_temp (struct bmc150_accel_data*,int*) ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmc150_accel_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 128:
   return bmc150_accel_get_temp(data, val);
  case 133:
   if (iio_buffer_enabled(indio_dev))
    return -EBUSY;
   else
    return bmc150_accel_get_axis(data, chan, val);
  default:
   return -EINVAL;
  }
 case 132:
  if (chan->type == 128) {
   *val = BMC150_ACCEL_TEMP_CENTER_VAL;
   return IIO_VAL_INT;
  } else {
   return -EINVAL;
  }
 case 129:
  *val = 0;
  switch (chan->type) {
  case 128:
   *val2 = 500000;
   return IIO_VAL_INT_PLUS_MICRO;
  case 133:
  {
   int i;
   const struct bmc150_scale_info *si;
   int st_size = ARRAY_SIZE(data->chip_info->scale_table);

   for (i = 0; i < st_size; ++i) {
    si = &data->chip_info->scale_table[i];
    if (si->reg_range == data->range) {
     *val2 = si->scale;
     return IIO_VAL_INT_PLUS_MICRO;
    }
   }
   return -EINVAL;
  }
  default:
   return -EINVAL;
  }
 case 130:
  mutex_lock(&data->mutex);
  ret = bmc150_accel_get_bw(data, val, val2);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }
}
