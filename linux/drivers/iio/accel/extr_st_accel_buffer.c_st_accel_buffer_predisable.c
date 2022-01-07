
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int ST_SENSORS_ENABLE_ALL_AXIS ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;
 int st_sensors_set_axis_enable (struct iio_dev*,int ) ;
 int st_sensors_set_enable (struct iio_dev*,int) ;

__attribute__((used)) static int st_accel_buffer_predisable(struct iio_dev *indio_dev)
{
 int err, err2;

 err = st_sensors_set_enable(indio_dev, 0);
 if (err < 0)
  goto st_accel_buffer_predisable;

 err = st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);

st_accel_buffer_predisable:
 err2 = iio_triggered_buffer_predisable(indio_dev);
 if (!err)
  err = err2;

 return err;
}
