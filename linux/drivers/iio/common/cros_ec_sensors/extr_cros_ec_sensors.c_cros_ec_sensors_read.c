
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct TYPE_15__ {int data; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_16__ {TYPE_5__ sensor_range; int cmd; TYPE_2__ sensor_offset; } ;
struct TYPE_19__ {int (* read_ec_sensors_data ) (struct iio_dev*,int,int*) ;int cmd_lock; int type; TYPE_8__* resp; TYPE_6__ param; TYPE_4__* calib; } ;
struct cros_ec_sensors_state {TYPE_9__ core; } ;
typedef int s64 ;
typedef int s16 ;
struct TYPE_17__ {int ret; } ;
struct TYPE_13__ {int* scale; } ;
struct TYPE_11__ {int* offset; } ;
struct TYPE_18__ {TYPE_7__ sensor_range; TYPE_3__ sensor_scale; TYPE_1__ sensor_offset; } ;
struct TYPE_14__ {int offset; int scale; } ;


 int CROS_EC_SENSOR_BITS ;
 int CROS_EC_SENSOR_MAX_AXIS ;
 int CROS_EC_SENSOR_X ;
 int EC_MOTION_SENSE_NO_VALUE ;
 int EINVAL ;
 int EPROTO ;




 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int MOTIONSENSE_CMD_SENSOR_OFFSET ;
 int MOTIONSENSE_CMD_SENSOR_RANGE ;
 int MOTIONSENSE_CMD_SENSOR_SCALE ;



 int MOTION_SENSE_DEFAULT_SCALE ;
 int cros_ec_motion_send_host_cmd (TYPE_9__*,int ) ;
 int cros_ec_sensors_core_read (TYPE_9__*,struct iio_chan_spec const*,int*,int*,long) ;
 int div_s64 (int,int) ;
 struct cros_ec_sensors_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iio_dev*,int,int*) ;

__attribute__((used)) static int cros_ec_sensors_read(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct cros_ec_sensors_state *st = iio_priv(indio_dev);
 s16 data = 0;
 s64 val64;
 int i;
 int ret;
 int idx = chan->scan_index;

 mutex_lock(&st->core.cmd_lock);

 switch (mask) {
 case 132:
  ret = st->core.read_ec_sensors_data(indio_dev, 1 << idx, &data);
  if (ret < 0)
   break;
  ret = IIO_VAL_INT;
  *val = data;
  break;
 case 134:
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_OFFSET;
  st->core.param.sensor_offset.flags = 0;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  if (ret < 0)
   break;


  for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
   st->core.calib[i].offset =
    st->core.resp->sensor_offset.offset[i];
  ret = IIO_VAL_INT;
  *val = st->core.calib[idx].offset;
  break;
 case 133:
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_SCALE;
  st->core.param.sensor_offset.flags = 0;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  if (ret == -EPROTO) {

   *val = 1;
   *val2 = 0;
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;
  } else if (ret) {
   break;
  }


  for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
   st->core.calib[i].scale =
    st->core.resp->sensor_scale.scale[i];

  *val = st->core.calib[idx].scale >> 15;
  *val2 = ((st->core.calib[idx].scale & 0x7FFF) * 1000000LL) /
   MOTION_SENSE_DEFAULT_SCALE;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 case 131:
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
  st->core.param.sensor_range.data = EC_MOTION_SENSE_NO_VALUE;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  if (ret < 0)
   break;

  val64 = st->core.resp->sensor_range.ret;
  switch (st->core.type) {
  case 130:




   *val = div_s64(val64 * 980665, 10);
   *val2 = 10000 << (CROS_EC_SENSOR_BITS - 1);
   ret = IIO_VAL_FRACTIONAL;
   break;
  case 129:





   *val = 0;
   *val2 = div_s64(val64 * 3141592653ULL,
     180 << (CROS_EC_SENSOR_BITS - 1));
   ret = IIO_VAL_INT_PLUS_NANO;
   break;
  case 128:




   *val = val64;
   *val2 = 100 << (CROS_EC_SENSOR_BITS - 1);
   ret = IIO_VAL_FRACTIONAL;
   break;
  default:
   ret = -EINVAL;
  }
  break;
 default:
  ret = cros_ec_sensors_core_read(&st->core, chan, val, val2,
      mask);
  break;
 }
 mutex_unlock(&st->core.cmd_lock);

 return ret;
}
