
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iio_chan_spec {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_6__ {int data; int roundup; } ;
struct TYPE_5__ {TYPE_1__ ec_rate; int cmd; TYPE_3__ sensor_odr; } ;
struct cros_ec_sensors_core_state {int curr_sampl_freq; TYPE_2__ param; } ;


 int EINVAL ;


 int MOTIONSENSE_CMD_EC_RATE ;
 int MOTIONSENSE_CMD_SENSOR_ODR ;
 int cros_ec_motion_send_host_cmd (struct cros_ec_sensors_core_state*,int ) ;

int cros_ec_sensors_core_write(struct cros_ec_sensors_core_state *st,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 int ret;

 switch (mask) {
 case 129:
  st->param.cmd = MOTIONSENSE_CMD_SENSOR_ODR;
  st->param.sensor_odr.data = val;


  st->param.sensor_odr.roundup = 1;

  ret = cros_ec_motion_send_host_cmd(st, 0);
  break;
 case 128:
  st->param.cmd = MOTIONSENSE_CMD_EC_RATE;
  st->param.ec_rate.data = val;

  ret = cros_ec_motion_send_host_cmd(st, 0);
  if (ret)
   break;
  st->curr_sampl_freq = val;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
