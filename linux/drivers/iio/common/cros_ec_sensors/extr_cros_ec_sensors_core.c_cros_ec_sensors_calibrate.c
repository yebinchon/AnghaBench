
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_5__ {int cmd; } ;
struct cros_ec_sensors_core_state {int cmd_lock; TYPE_4__* resp; TYPE_2__* calib; TYPE_1__ param; } ;
typedef int ssize_t ;
struct TYPE_7__ {int * offset; } ;
struct TYPE_8__ {TYPE_3__ perform_calib; } ;
struct TYPE_6__ {int offset; } ;


 int CROS_EC_SENSOR_MAX_AXIS ;
 int CROS_EC_SENSOR_X ;
 int EINVAL ;
 int MOTIONSENSE_CMD_PERFORM_CALIB ;
 int cros_ec_motion_send_host_cmd (struct cros_ec_sensors_core_state*,int ) ;
 int dev_warn (int *,char*) ;
 struct cros_ec_sensors_core_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t cros_ec_sensors_calibrate(struct iio_dev *indio_dev,
  uintptr_t private, const struct iio_chan_spec *chan,
  const char *buf, size_t len)
{
 struct cros_ec_sensors_core_state *st = iio_priv(indio_dev);
 int ret, i;
 bool calibrate;

 ret = strtobool(buf, &calibrate);
 if (ret < 0)
  return ret;
 if (!calibrate)
  return -EINVAL;

 mutex_lock(&st->cmd_lock);
 st->param.cmd = MOTIONSENSE_CMD_PERFORM_CALIB;
 ret = cros_ec_motion_send_host_cmd(st, 0);
 if (ret != 0) {
  dev_warn(&indio_dev->dev, "Unable to calibrate sensor\n");
 } else {

  for (i = CROS_EC_SENSOR_X; i < CROS_EC_SENSOR_MAX_AXIS; i++)
   st->calib[i].offset = st->resp->perform_calib.offset[i];
 }
 mutex_unlock(&st->cmd_lock);

 return ret ? ret : len;
}
