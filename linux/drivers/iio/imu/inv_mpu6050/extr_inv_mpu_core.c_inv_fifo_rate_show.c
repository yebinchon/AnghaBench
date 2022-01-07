
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int divider; } ;
struct inv_mpu6050_state {int lock; TYPE_1__ chip_config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int INV_MPU6050_DIVIDER_TO_FIFO_RATE (int ) ;
 int PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct inv_mpu6050_state* iio_priv (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t
inv_fifo_rate_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct inv_mpu6050_state *st = iio_priv(dev_to_iio_dev(dev));
 unsigned fifo_rate;

 mutex_lock(&st->lock);
 fifo_rate = INV_MPU6050_DIVIDER_TO_FIFO_RATE(st->chip_config.divider);
 mutex_unlock(&st->lock);

 return scnprintf(buf, PAGE_SIZE, "%u\n", fifo_rate);
}
