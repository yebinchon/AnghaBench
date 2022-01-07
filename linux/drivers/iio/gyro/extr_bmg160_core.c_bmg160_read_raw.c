
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; int scan_index; } ;
struct bmg160_data {int mutex; int dps_range; } ;
struct TYPE_3__ {int scale; int dps_range; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BMG160_TEMP_CENTER_VAL ;
 int EBUSY ;
 int EINVAL ;







 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bmg160_get_axis (struct bmg160_data*,int ,int*) ;
 int bmg160_get_bw (struct bmg160_data*,int*) ;
 int bmg160_get_filter (struct bmg160_data*,int*) ;
 int bmg160_get_temp (struct bmg160_data*,int*) ;
 TYPE_1__* bmg160_scale_table ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bmg160_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct bmg160_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 128:
   return bmg160_get_temp(data, val);
  case 134:
   if (iio_buffer_enabled(indio_dev))
    return -EBUSY;
   else
    return bmg160_get_axis(data, chan->scan_index,
             val);
  default:
   return -EINVAL;
  }
 case 132:
  if (chan->type == 128) {
   *val = BMG160_TEMP_CENTER_VAL;
   return IIO_VAL_INT;
  } else
   return -EINVAL;
 case 133:
  return bmg160_get_filter(data, val);
 case 129:
  switch (chan->type) {
  case 128:
   *val = 500;
   return IIO_VAL_INT;
  case 134:
  {
   int i;

   for (i = 0; i < ARRAY_SIZE(bmg160_scale_table); ++i) {
    if (bmg160_scale_table[i].dps_range ==
       data->dps_range) {
     *val = 0;
     *val2 = bmg160_scale_table[i].scale;
     return IIO_VAL_INT_PLUS_MICRO;
    }
   }
   return -EINVAL;
  }
  default:
   return -EINVAL;
  }
 case 130:
  *val2 = 0;
  mutex_lock(&data->mutex);
  ret = bmg160_get_bw(data, val);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }
}
