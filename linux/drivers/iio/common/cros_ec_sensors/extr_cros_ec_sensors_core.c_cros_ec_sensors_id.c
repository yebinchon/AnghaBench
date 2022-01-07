
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_3__ {int sensor_num; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct cros_ec_sensors_core_state {TYPE_2__ param; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct cros_ec_sensors_core_state* iio_priv (struct iio_dev*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t cros_ec_sensors_id(struct iio_dev *indio_dev,
      uintptr_t private,
      const struct iio_chan_spec *chan, char *buf)
{
 struct cros_ec_sensors_core_state *st = iio_priv(indio_dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", st->param.info.sensor_num);
}
