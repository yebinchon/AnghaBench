
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inv_mpu6050_state {int lock; TYPE_1__* reg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;
struct TYPE_2__ {int accl_offset; int gyro_offset; } ;


 int EINVAL ;




 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu6050_sensor_set (struct inv_mpu6050_state*,int ,int ,int) ;
 int inv_mpu6050_set_power_itg (struct inv_mpu6050_state*,int) ;
 int inv_mpu6050_write_accel_scale (struct inv_mpu6050_state*,int) ;
 int inv_mpu6050_write_gyro_scale (struct inv_mpu6050_state*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int inv_mpu6050_write_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int val, int val2, long mask)
{
 struct inv_mpu6050_state *st = iio_priv(indio_dev);
 int result;





 result = iio_device_claim_direct_mode(indio_dev);
 if (result)
  return result;

 mutex_lock(&st->lock);
 result = inv_mpu6050_set_power_itg(st, 1);
 if (result)
  goto error_write_raw_unlock;

 switch (mask) {
 case 128:
  switch (chan->type) {
  case 130:
   result = inv_mpu6050_write_gyro_scale(st, val2);
   break;
  case 131:
   result = inv_mpu6050_write_accel_scale(st, val2);
   break;
  default:
   result = -EINVAL;
   break;
  }
  break;
 case 129:
  switch (chan->type) {
  case 130:
   result = inv_mpu6050_sensor_set(st,
       st->reg->gyro_offset,
       chan->channel2, val);
   break;
  case 131:
   result = inv_mpu6050_sensor_set(st,
       st->reg->accl_offset,
       chan->channel2, val);
   break;
  default:
   result = -EINVAL;
   break;
  }
  break;
 default:
  result = -EINVAL;
  break;
 }

 result |= inv_mpu6050_set_power_itg(st, 0);
error_write_raw_unlock:
 mutex_unlock(&st->lock);
 iio_device_release_direct_mode(indio_dev);

 return result;
}
