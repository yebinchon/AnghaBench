
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iio_chan_spec {int dummy; } ;
struct TYPE_9__ {void* data; } ;
struct TYPE_7__ {void* data; } ;
struct TYPE_10__ {TYPE_3__ sensor_odr; int cmd; TYPE_1__ ec_rate; } ;
struct cros_ec_sensors_core_state {TYPE_6__* resp; TYPE_4__ param; } ;
struct TYPE_11__ {int ret; } ;
struct TYPE_8__ {int ret; } ;
struct TYPE_12__ {TYPE_5__ sensor_odr; TYPE_2__ ec_rate; } ;


 void* EC_MOTION_SENSE_NO_VALUE ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int MOTIONSENSE_CMD_EC_RATE ;
 int MOTIONSENSE_CMD_SENSOR_ODR ;
 int cros_ec_motion_send_host_cmd (struct cros_ec_sensors_core_state*,int ) ;

int cros_ec_sensors_core_read(struct cros_ec_sensors_core_state *st,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 int ret;

 switch (mask) {
 case 128:
  st->param.cmd = MOTIONSENSE_CMD_EC_RATE;
  st->param.ec_rate.data =
   EC_MOTION_SENSE_NO_VALUE;

  ret = cros_ec_motion_send_host_cmd(st, 0);
  if (ret)
   break;

  *val = st->resp->ec_rate.ret;
  ret = IIO_VAL_INT;
  break;
 case 129:
  st->param.cmd = MOTIONSENSE_CMD_SENSOR_ODR;
  st->param.sensor_odr.data =
   EC_MOTION_SENSE_NO_VALUE;

  ret = cros_ec_motion_send_host_cmd(st, 0);
  if (ret)
   break;

  *val = st->resp->sensor_odr.ret;
  ret = IIO_VAL_INT;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
