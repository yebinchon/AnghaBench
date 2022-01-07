
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_sensor_data {int odr; TYPE_1__* sensor_settings; } ;
struct iio_dev {scalar_t__ currentmode; int mlock; } ;
struct TYPE_4__ {int shift; } ;
struct iio_chan_spec {TYPE_2__ scan_type; } ;
struct TYPE_3__ {int bootime; } ;


 int EBUSY ;
 scalar_t__ INDIO_BUFFER_TRIGGERED ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int st_sensors_read_axis_data (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int st_sensors_set_enable (struct iio_dev*,int) ;

int st_sensors_read_info_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *ch, int *val)
{
 int err;
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 mutex_lock(&indio_dev->mlock);
 if (indio_dev->currentmode == INDIO_BUFFER_TRIGGERED) {
  err = -EBUSY;
  goto out;
 } else {
  err = st_sensors_set_enable(indio_dev, 1);
  if (err < 0)
   goto out;

  msleep((sdata->sensor_settings->bootime * 1000) / sdata->odr);
  err = st_sensors_read_axis_data(indio_dev, ch, val);
  if (err < 0)
   goto out;

  *val = *val >> ch->scan_type.shift;

  err = st_sensors_set_enable(indio_dev, 0);
 }
out:
 mutex_unlock(&indio_dev->mlock);

 return err;
}
