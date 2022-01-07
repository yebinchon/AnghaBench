
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_5__ {int data; int roundup; } ;
struct TYPE_6__ {TYPE_1__ sensor_range; int cmd; } ;
struct TYPE_7__ {int cmd_lock; TYPE_2__ param; } ;
struct cros_ec_baro_state {TYPE_3__ core; } ;


 int EIO ;

 int MOTIONSENSE_CMD_SENSOR_RANGE ;
 int cros_ec_motion_send_host_cmd (TYPE_3__*,int ) ;
 int cros_ec_sensors_core_write (TYPE_3__*,struct iio_chan_spec const*,int,int,long) ;
 struct cros_ec_baro_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cros_ec_baro_write(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val, int val2, long mask)
{
 struct cros_ec_baro_state *st = iio_priv(indio_dev);
 int ret = 0;

 mutex_lock(&st->core.cmd_lock);

 switch (mask) {
 case 128:
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
  st->core.param.sensor_range.data = val;


  st->core.param.sensor_range.roundup = 1;

  if (cros_ec_motion_send_host_cmd(&st->core, 0))
   ret = -EIO;
  break;
 default:
  ret = cros_ec_sensors_core_write(&st->core, chan, val, val2,
       mask);
  break;
 }

 mutex_unlock(&st->core.cmd_lock);

 return ret;
}
