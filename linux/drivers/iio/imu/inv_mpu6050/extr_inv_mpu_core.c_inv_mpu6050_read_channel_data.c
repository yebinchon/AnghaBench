
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inv_mpu6050_state {TYPE_1__* reg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel2; } ;
struct TYPE_2__ {int temperature; int raw_accl; int raw_gyro; } ;


 int EINVAL ;


 int IIO_MOD_X ;

 int INV_MPU6050_BIT_PWR_ACCL_STBY ;
 int INV_MPU6050_BIT_PWR_GYRO_STBY ;
 int INV_MPU6050_SENSOR_UP_TIME ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu6050_sensor_show (struct inv_mpu6050_state*,int ,int ,int*) ;
 int inv_mpu6050_set_power_itg (struct inv_mpu6050_state*,int) ;
 int inv_mpu6050_switch_engine (struct inv_mpu6050_state*,int,int ) ;
 int msleep (int ) ;

__attribute__((used)) static int inv_mpu6050_read_channel_data(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val)
{
 struct inv_mpu6050_state *st = iio_priv(indio_dev);
 int result;
 int ret;

 result = inv_mpu6050_set_power_itg(st, 1);
 if (result)
  return result;

 switch (chan->type) {
 case 129:
  result = inv_mpu6050_switch_engine(st, 1,
    INV_MPU6050_BIT_PWR_GYRO_STBY);
  if (result)
   goto error_power_off;
  ret = inv_mpu6050_sensor_show(st, st->reg->raw_gyro,
           chan->channel2, val);
  result = inv_mpu6050_switch_engine(st, 0,
    INV_MPU6050_BIT_PWR_GYRO_STBY);
  if (result)
   goto error_power_off;
  break;
 case 130:
  result = inv_mpu6050_switch_engine(st, 1,
    INV_MPU6050_BIT_PWR_ACCL_STBY);
  if (result)
   goto error_power_off;
  ret = inv_mpu6050_sensor_show(st, st->reg->raw_accl,
           chan->channel2, val);
  result = inv_mpu6050_switch_engine(st, 0,
    INV_MPU6050_BIT_PWR_ACCL_STBY);
  if (result)
   goto error_power_off;
  break;
 case 128:

  msleep(INV_MPU6050_SENSOR_UP_TIME);
  ret = inv_mpu6050_sensor_show(st, st->reg->temperature,
           IIO_MOD_X, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 result = inv_mpu6050_set_power_itg(st, 0);
 if (result)
  goto error_power_off;

 return ret;

error_power_off:
 inv_mpu6050_set_power_itg(st, 0);
 return result;
}
