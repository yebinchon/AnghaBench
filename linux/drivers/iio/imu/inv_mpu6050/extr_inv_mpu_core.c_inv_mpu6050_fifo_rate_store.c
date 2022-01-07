
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ divider; } ;
struct inv_mpu6050_state {int lock; TYPE_2__ chip_config; TYPE_1__* reg; int map; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int sample_rate_div; } ;


 int EINVAL ;
 int INV_MPU6050_DIVIDER_TO_FIFO_RATE (scalar_t__) ;
 scalar_t__ INV_MPU6050_FIFO_RATE_TO_DIVIDER (int) ;
 int INV_MPU6050_MAX_FIFO_RATE ;
 int INV_MPU6050_MIN_FIFO_RATE ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu6050_set_lpf (struct inv_mpu6050_state*,int) ;
 int inv_mpu6050_set_power_itg (struct inv_mpu6050_state*,int) ;
 scalar_t__ kstrtoint (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static ssize_t
inv_mpu6050_fifo_rate_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int fifo_rate;
 u8 d;
 int result;
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct inv_mpu6050_state *st = iio_priv(indio_dev);

 if (kstrtoint(buf, 10, &fifo_rate))
  return -EINVAL;
 if (fifo_rate < INV_MPU6050_MIN_FIFO_RATE ||
     fifo_rate > INV_MPU6050_MAX_FIFO_RATE)
  return -EINVAL;

 result = iio_device_claim_direct_mode(indio_dev);
 if (result)
  return result;


 d = INV_MPU6050_FIFO_RATE_TO_DIVIDER(fifo_rate);

 fifo_rate = INV_MPU6050_DIVIDER_TO_FIFO_RATE(d);

 mutex_lock(&st->lock);
 if (d == st->chip_config.divider) {
  result = 0;
  goto fifo_rate_fail_unlock;
 }
 result = inv_mpu6050_set_power_itg(st, 1);
 if (result)
  goto fifo_rate_fail_unlock;

 result = regmap_write(st->map, st->reg->sample_rate_div, d);
 if (result)
  goto fifo_rate_fail_power_off;
 st->chip_config.divider = d;

 result = inv_mpu6050_set_lpf(st, fifo_rate);
 if (result)
  goto fifo_rate_fail_power_off;

fifo_rate_fail_power_off:
 result |= inv_mpu6050_set_power_itg(st, 0);
fifo_rate_fail_unlock:
 mutex_unlock(&st->lock);
 iio_device_release_direct_mode(indio_dev);
 if (result)
  return result;

 return count;
}
