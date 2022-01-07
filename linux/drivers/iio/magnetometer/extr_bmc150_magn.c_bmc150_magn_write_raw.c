
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;
struct bmc150_magn_data {int max_odr; int mutex; int regmap; } ;


 int BMC150_MAGN_REG_REP_DATAMASK ;
 int BMC150_MAGN_REG_REP_XY ;
 int BMC150_MAGN_REG_REP_Z ;
 int BMC150_MAGN_REPXY_TO_REGVAL (int) ;
 int BMC150_MAGN_REPZ_TO_REGVAL (int) ;
 int EINVAL ;





 int bmc150_magn_set_max_odr (struct bmc150_magn_data*,int,int,int ) ;
 int bmc150_magn_set_odr (struct bmc150_magn_data*,int) ;
 struct bmc150_magn_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bmc150_magn_write_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int val, int val2, long mask)
{
 struct bmc150_magn_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  if (val > data->max_odr)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = bmc150_magn_set_odr(data, val);
  mutex_unlock(&data->mutex);
  return ret;
 case 132:
  switch (chan->channel2) {
  case 130:
  case 129:
   if (val < 1 || val > 511)
    return -EINVAL;
   mutex_lock(&data->mutex);
   ret = bmc150_magn_set_max_odr(data, val, 0, 0);
   if (ret < 0) {
    mutex_unlock(&data->mutex);
    return ret;
   }
   ret = regmap_update_bits(data->regmap,
       BMC150_MAGN_REG_REP_XY,
       BMC150_MAGN_REG_REP_DATAMASK,
       BMC150_MAGN_REPXY_TO_REGVAL
       (val));
   mutex_unlock(&data->mutex);
   return ret;
  case 128:
   if (val < 1 || val > 256)
    return -EINVAL;
   mutex_lock(&data->mutex);
   ret = bmc150_magn_set_max_odr(data, 0, val, 0);
   if (ret < 0) {
    mutex_unlock(&data->mutex);
    return ret;
   }
   ret = regmap_update_bits(data->regmap,
       BMC150_MAGN_REG_REP_Z,
       BMC150_MAGN_REG_REP_DATAMASK,
       BMC150_MAGN_REPZ_TO_REGVAL
       (val));
   mutex_unlock(&data->mutex);
   return ret;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
