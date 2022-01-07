
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct TYPE_11__ {int data; int roundup; } ;
struct TYPE_10__ {int* scale; void* temp; } ;
struct TYPE_8__ {int* offset; void* flags; void* temp; } ;
struct TYPE_12__ {TYPE_4__ sensor_range; int cmd; TYPE_3__ sensor_scale; TYPE_1__ sensor_offset; } ;
struct TYPE_13__ {int cmd_lock; TYPE_5__ param; int type; TYPE_2__* calib; } ;
struct cros_ec_sensors_state {TYPE_6__ core; } ;
struct TYPE_9__ {int offset; int scale; } ;


 int CROS_EC_SENSOR_MAX_AXIS ;
 int CROS_EC_SENSOR_X ;
 void* EC_MOTION_SENSE_INVALID_CALIB_TEMP ;
 int EINVAL ;



 int MOTIONSENSE_CMD_SENSOR_OFFSET ;
 int MOTIONSENSE_CMD_SENSOR_RANGE ;
 int MOTIONSENSE_CMD_SENSOR_SCALE ;
 int MOTIONSENSE_TYPE_MAG ;
 void* MOTION_SENSE_SET_OFFSET ;
 int cros_ec_motion_send_host_cmd (TYPE_6__*,int ) ;
 int cros_ec_sensors_core_write (TYPE_6__*,struct iio_chan_spec const*,int,int,long) ;
 struct cros_ec_sensors_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cros_ec_sensors_write(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct cros_ec_sensors_state *st = iio_priv(indio_dev);
 int i;
 int ret;
 int idx = chan->scan_index;

 mutex_lock(&st->core.cmd_lock);

 switch (mask) {
 case 130:
  st->core.calib[idx].offset = val;


  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_OFFSET;
  st->core.param.sensor_offset.flags =
   MOTION_SENSE_SET_OFFSET;
  for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
   st->core.param.sensor_offset.offset[i] =
    st->core.calib[i].offset;
  st->core.param.sensor_offset.temp =
   EC_MOTION_SENSE_INVALID_CALIB_TEMP;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  break;
 case 129:
  st->core.calib[idx].scale = val;


  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_SCALE;
  st->core.param.sensor_offset.flags =
   MOTION_SENSE_SET_OFFSET;
  for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
   st->core.param.sensor_scale.scale[i] =
    st->core.calib[i].scale;
  st->core.param.sensor_scale.temp =
   EC_MOTION_SENSE_INVALID_CALIB_TEMP;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  break;
 case 128:
  if (st->core.type == MOTIONSENSE_TYPE_MAG) {
   ret = -EINVAL;
   break;
  }
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
  st->core.param.sensor_range.data = val;


  st->core.param.sensor_range.roundup = 1;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  break;
 default:
  ret = cros_ec_sensors_core_write(
    &st->core, chan, val, val2, mask);
  break;
 }

 mutex_unlock(&st->core.cmd_lock);

 return ret;
}
