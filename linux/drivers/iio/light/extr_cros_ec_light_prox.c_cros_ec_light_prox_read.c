
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; int type; } ;
struct TYPE_13__ {int data; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_14__ {TYPE_4__ sensor_range; int cmd; TYPE_1__ sensor_offset; } ;
struct TYPE_17__ {int cmd_lock; TYPE_7__* resp; TYPE_5__ param; TYPE_3__* calib; } ;
struct cros_ec_light_prox_state {TYPE_8__ core; } ;
typedef int s64 ;
typedef int s16 ;
struct TYPE_15__ {int ret; } ;
struct TYPE_11__ {int* offset; } ;
struct TYPE_16__ {TYPE_6__ sensor_range; TYPE_2__ sensor_offset; } ;
struct TYPE_12__ {int offset; } ;


 int EC_MOTION_SENSE_NO_VALUE ;
 int EINVAL ;




 int IIO_LIGHT ;
 int IIO_PROXIMITY ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int MOTIONSENSE_CMD_SENSOR_OFFSET ;
 int MOTIONSENSE_CMD_SENSOR_RANGE ;
 int cros_ec_motion_send_host_cmd (TYPE_8__*,int ) ;
 int cros_ec_sensors_core_read (TYPE_8__*,struct iio_chan_spec const*,int*,int*,long) ;
 int cros_ec_sensors_read_cmd (struct iio_dev*,int,int *) ;
 struct cros_ec_light_prox_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cros_ec_light_prox_read(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct cros_ec_light_prox_state *st = iio_priv(indio_dev);
 u16 data = 0;
 s64 val64;
 int ret;
 int idx = chan->scan_index;

 mutex_lock(&st->core.cmd_lock);

 switch (mask) {
 case 128:
  if (chan->type == IIO_PROXIMITY) {
   ret = cros_ec_sensors_read_cmd(indio_dev, 1 << idx,
           (s16 *)&data);
   if (ret)
    break;
   *val = data;
   ret = IIO_VAL_INT;
  } else {
   ret = -EINVAL;
  }
  break;
 case 129:
  if (chan->type == IIO_LIGHT) {
   ret = cros_ec_sensors_read_cmd(indio_dev, 1 << idx,
           (s16 *)&data);
   if (ret)
    break;





   *val = data;
   ret = IIO_VAL_INT;
  } else {
   ret = -EINVAL;
  }
  break;
 case 131:
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_OFFSET;
  st->core.param.sensor_offset.flags = 0;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  if (ret)
   break;


  st->core.calib[0].offset =
   st->core.resp->sensor_offset.offset[0];

  *val = st->core.calib[idx].offset;
  ret = IIO_VAL_INT;
  break;
 case 130:





  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
  st->core.param.sensor_range.data = EC_MOTION_SENSE_NO_VALUE;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  if (ret)
   break;

  val64 = st->core.resp->sensor_range.ret;
  *val = val64 >> 16;
  *val2 = (val64 & 0xffff) * 100;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 default:
  ret = cros_ec_sensors_core_read(&st->core, chan, val, val2,
      mask);
  break;
 }

 mutex_unlock(&st->core.cmd_lock);

 return ret;
}
