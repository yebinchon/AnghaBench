
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_ctrl; } ;
struct inv_mpu6050_state {TYPE_1__ chip_config; TYPE_2__* reg; int map; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ user_ctrl; scalar_t__ i2c_if; } ;


 int INV_ICM20602_BIT_I2C_IF_DIS ;
 int INV_MPU6050_BIT_I2C_IF_DIS ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu6050_set_power_itg (struct inv_mpu6050_state*,int) ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int inv_mpu_i2c_disable(struct iio_dev *indio_dev)
{
 struct inv_mpu6050_state *st = iio_priv(indio_dev);
 int ret = 0;

 ret = inv_mpu6050_set_power_itg(st, 1);
 if (ret)
  return ret;

 if (st->reg->i2c_if) {
  ret = regmap_write(st->map, st->reg->i2c_if,
       INV_ICM20602_BIT_I2C_IF_DIS);
 } else {
  st->chip_config.user_ctrl |= INV_MPU6050_BIT_I2C_IF_DIS;
  ret = regmap_write(st->map, st->reg->user_ctrl,
       st->chip_config.user_ctrl);
 }
 if (ret) {
  inv_mpu6050_set_power_itg(st, 0);
  return ret;
 }

 return inv_mpu6050_set_power_itg(st, 0);
}
