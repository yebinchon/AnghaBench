
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gyro_fifo_enable; int accl_fifo_enable; } ;
struct inv_mpu6050_state {TYPE_1__ chip_config; } ;
struct iio_dev {int active_scan_mask; } ;


 int INV_MPU6050_SCAN_ACCL_X ;
 int INV_MPU6050_SCAN_ACCL_Y ;
 int INV_MPU6050_SCAN_ACCL_Z ;
 int INV_MPU6050_SCAN_GYRO_X ;
 int INV_MPU6050_SCAN_GYRO_Y ;
 int INV_MPU6050_SCAN_GYRO_Z ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void inv_scan_query(struct iio_dev *indio_dev)
{
 struct inv_mpu6050_state *st = iio_priv(indio_dev);

 st->chip_config.gyro_fifo_enable =
  test_bit(INV_MPU6050_SCAN_GYRO_X,
    indio_dev->active_scan_mask) ||
  test_bit(INV_MPU6050_SCAN_GYRO_Y,
    indio_dev->active_scan_mask) ||
  test_bit(INV_MPU6050_SCAN_GYRO_Z,
    indio_dev->active_scan_mask);

 st->chip_config.accl_fifo_enable =
  test_bit(INV_MPU6050_SCAN_ACCL_X,
    indio_dev->active_scan_mask) ||
  test_bit(INV_MPU6050_SCAN_ACCL_Y,
    indio_dev->active_scan_mask) ||
  test_bit(INV_MPU6050_SCAN_ACCL_Z,
    indio_dev->active_scan_mask);
}
