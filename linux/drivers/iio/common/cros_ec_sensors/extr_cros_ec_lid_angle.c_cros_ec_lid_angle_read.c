
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int cmd_lock; } ;
struct cros_ec_lid_angle_state {TYPE_1__ core; } ;
typedef int s16 ;


 int IIO_VAL_INT ;
 int cros_ec_sensors_read_lid_angle (struct iio_dev*,int,int*) ;
 struct cros_ec_lid_angle_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cros_ec_lid_angle_read(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct cros_ec_lid_angle_state *st = iio_priv(indio_dev);
 s16 data;
 int ret;

 mutex_lock(&st->core.cmd_lock);
 ret = cros_ec_sensors_read_lid_angle(indio_dev, 1, &data);
 if (ret == 0) {
  *val = data;
  ret = IIO_VAL_INT;
 }
 mutex_unlock(&st->core.cmd_lock);
 return ret;
}
