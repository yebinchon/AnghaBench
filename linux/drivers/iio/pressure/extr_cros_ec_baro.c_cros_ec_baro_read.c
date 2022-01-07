
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_8__ {TYPE_1__ sensor_range; int cmd; } ;
struct TYPE_11__ {int cmd_lock; TYPE_4__* resp; TYPE_2__ param; } ;
struct cros_ec_baro_state {TYPE_5__ core; } ;
typedef int s16 ;
struct TYPE_9__ {int ret; } ;
struct TYPE_10__ {TYPE_3__ sensor_range; } ;


 int CROS_EC_SENSOR_BITS ;
 int EC_MOTION_SENSE_NO_VALUE ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int MOTIONSENSE_CMD_SENSOR_RANGE ;
 int cros_ec_motion_send_host_cmd (TYPE_5__*,int ) ;
 int cros_ec_sensors_core_read (TYPE_5__*,struct iio_chan_spec const*,int*,int*,long) ;
 int cros_ec_sensors_read_cmd (struct iio_dev*,int,int *) ;
 struct cros_ec_baro_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cros_ec_baro_read(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct cros_ec_baro_state *st = iio_priv(indio_dev);
 u16 data = 0;
 int ret;
 int idx = chan->scan_index;

 mutex_lock(&st->core.cmd_lock);

 switch (mask) {
 case 129:
  ret = cros_ec_sensors_read_cmd(indio_dev, 1 << idx,
          (s16 *)&data);
  if (ret)
   break;

  *val = data;
  ret = IIO_VAL_INT;
  break;
 case 128:
  st->core.param.cmd = MOTIONSENSE_CMD_SENSOR_RANGE;
  st->core.param.sensor_range.data = EC_MOTION_SENSE_NO_VALUE;

  ret = cros_ec_motion_send_host_cmd(&st->core, 0);
  if (ret)
   break;

  *val = st->core.resp->sensor_range.ret;


  *val2 = 10 << CROS_EC_SENSOR_BITS;
  ret = IIO_VAL_FRACTIONAL;
  break;
 default:
  ret = cros_ec_sensors_core_read(&st->core, chan, val, val2,
      mask);
  break;
 }

 mutex_unlock(&st->core.cmd_lock);

 return ret;
}
