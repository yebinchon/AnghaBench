
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t fsr; size_t accl_fs; } ;
struct inv_mpu6050_state {int lock; TYPE_2__* reg; int chip_type; TYPE_1__ chip_config; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;
struct TYPE_4__ {int accl_offset; int gyro_offset; } ;


 int EINVAL ;







 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int INV_ICM20602 ;
 int INV_ICM20602_TEMP_OFFSET ;
 int INV_ICM20602_TEMP_SCALE ;
 int INV_MPU6050_TEMP_OFFSET ;
 int INV_MPU6050_TEMP_SCALE ;
 int* accel_scale ;
 int* gyro_scale_6050 ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu6050_read_channel_data (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int inv_mpu6050_sensor_show (struct inv_mpu6050_state*,int ,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
inv_mpu6050_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct inv_mpu6050_state *st = iio_priv(indio_dev);
 int ret = 0;

 switch (mask) {
 case 130:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  mutex_lock(&st->lock);
  ret = inv_mpu6050_read_channel_data(indio_dev, chan, val);
  mutex_unlock(&st->lock);
  iio_device_release_direct_mode(indio_dev);
  return ret;
 case 129:
  switch (chan->type) {
  case 133:
   mutex_lock(&st->lock);
   *val = 0;
   *val2 = gyro_scale_6050[st->chip_config.fsr];
   mutex_unlock(&st->lock);

   return IIO_VAL_INT_PLUS_NANO;
  case 134:
   mutex_lock(&st->lock);
   *val = 0;
   *val2 = accel_scale[st->chip_config.accl_fs];
   mutex_unlock(&st->lock);

   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   *val = 0;
   if (st->chip_type == INV_ICM20602)
    *val2 = INV_ICM20602_TEMP_SCALE;
   else
    *val2 = INV_MPU6050_TEMP_SCALE;

   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 131:
  switch (chan->type) {
  case 128:
   if (st->chip_type == INV_ICM20602)
    *val = INV_ICM20602_TEMP_OFFSET;
   else
    *val = INV_MPU6050_TEMP_OFFSET;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 132:
  switch (chan->type) {
  case 133:
   mutex_lock(&st->lock);
   ret = inv_mpu6050_sensor_show(st, st->reg->gyro_offset,
      chan->channel2, val);
   mutex_unlock(&st->lock);
   return IIO_VAL_INT;
  case 134:
   mutex_lock(&st->lock);
   ret = inv_mpu6050_sensor_show(st, st->reg->accl_offset,
      chan->channel2, val);
   mutex_unlock(&st->lock);
   return IIO_VAL_INT;

  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
