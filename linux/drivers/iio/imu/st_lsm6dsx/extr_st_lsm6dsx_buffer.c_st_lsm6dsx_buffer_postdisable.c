
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_lsm6dsx_sensor {struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {TYPE_2__* settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int (* update_fifo ) (struct st_lsm6dsx_sensor*,int) ;} ;
struct TYPE_4__ {TYPE_1__ fifo_ops; } ;


 int ENOTSUPP ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int stub1 (struct st_lsm6dsx_sensor*,int) ;

__attribute__((used)) static int st_lsm6dsx_buffer_postdisable(struct iio_dev *iio_dev)
{
 struct st_lsm6dsx_sensor *sensor = iio_priv(iio_dev);
 struct st_lsm6dsx_hw *hw = sensor->hw;

 if (!hw->settings->fifo_ops.update_fifo)
  return -ENOTSUPP;

 return hw->settings->fifo_ops.update_fifo(sensor, 0);
}
