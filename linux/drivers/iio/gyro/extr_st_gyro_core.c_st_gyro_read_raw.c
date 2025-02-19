
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_sensor_data {int odr; TYPE_1__* current_fullscale; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int gain; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_sensors_read_info_raw (struct iio_dev*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int st_gyro_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *ch, int *val,
       int *val2, long mask)
{
 int err;
 struct st_sensor_data *gdata = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  err = st_sensors_read_info_raw(indio_dev, ch, val);
  if (err < 0)
   goto read_error;

  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = gdata->current_fullscale->gain;
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  *val = gdata->odr;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

read_error:
 return err;
}
