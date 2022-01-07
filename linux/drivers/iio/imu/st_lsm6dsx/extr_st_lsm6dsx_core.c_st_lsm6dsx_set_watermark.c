
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_lsm6dsx_sensor {unsigned int watermark; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {int conf_lock; TYPE_1__* settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {unsigned int max_fifo_size; } ;


 int EINVAL ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int st_lsm6dsx_update_watermark (struct st_lsm6dsx_sensor*,unsigned int) ;

int st_lsm6dsx_set_watermark(struct iio_dev *iio_dev, unsigned int val)
{
 struct st_lsm6dsx_sensor *sensor = iio_priv(iio_dev);
 struct st_lsm6dsx_hw *hw = sensor->hw;
 int err;

 if (val < 1 || val > hw->settings->max_fifo_size)
  return -EINVAL;

 mutex_lock(&hw->conf_lock);

 err = st_lsm6dsx_update_watermark(sensor, val);

 mutex_unlock(&hw->conf_lock);

 if (err < 0)
  return err;

 sensor->watermark = val;

 return 0;
}
