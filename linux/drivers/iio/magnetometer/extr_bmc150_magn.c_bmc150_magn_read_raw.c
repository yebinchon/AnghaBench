
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int channel2; } ;
struct bmc150_magn_data {int regmap; int mutex; } ;
typedef int s32 ;


 int AXIS_XYZ_MAX ;
 int BMC150_MAGN_REGVAL_TO_REPXY (int) ;
 int BMC150_MAGN_REGVAL_TO_REPZ (int) ;
 int BMC150_MAGN_REG_REP_XY ;
 int BMC150_MAGN_REG_REP_Z ;
 int EBUSY ;
 int EINVAL ;







 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bmc150_magn_get_odr (struct bmc150_magn_data*,int*) ;
 int bmc150_magn_read_xyz (struct bmc150_magn_data*,int*) ;
 int bmc150_magn_set_power_state (struct bmc150_magn_data*,int) ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct bmc150_magn_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int bmc150_magn_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct bmc150_magn_data *data = iio_priv(indio_dev);
 int ret, tmp;
 s32 values[AXIS_XYZ_MAX];

 switch (mask) {
 case 133:
  if (iio_buffer_enabled(indio_dev))
   return -EBUSY;
  mutex_lock(&data->mutex);

  ret = bmc150_magn_set_power_state(data, 1);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }

  ret = bmc150_magn_read_xyz(data, values);
  if (ret < 0) {
   bmc150_magn_set_power_state(data, 0);
   mutex_unlock(&data->mutex);
   return ret;
  }
  *val = values[chan->scan_index];

  ret = bmc150_magn_set_power_state(data, 0);
  if (ret < 0) {
   mutex_unlock(&data->mutex);
   return ret;
  }

  mutex_unlock(&data->mutex);
  return IIO_VAL_INT;
 case 131:





  *val = 0;
  *val2 = 625;
  return IIO_VAL_INT_PLUS_MICRO;
 case 132:
  ret = bmc150_magn_get_odr(data, val);
  if (ret < 0)
   return ret;
  return IIO_VAL_INT;
 case 134:
  switch (chan->channel2) {
  case 130:
  case 129:
   ret = regmap_read(data->regmap, BMC150_MAGN_REG_REP_XY,
       &tmp);
   if (ret < 0)
    return ret;
   *val = BMC150_MAGN_REGVAL_TO_REPXY(tmp);
   return IIO_VAL_INT;
  case 128:
   ret = regmap_read(data->regmap, BMC150_MAGN_REG_REP_Z,
       &tmp);
   if (ret < 0)
    return ret;
   *val = BMC150_MAGN_REGVAL_TO_REPZ(tmp);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
