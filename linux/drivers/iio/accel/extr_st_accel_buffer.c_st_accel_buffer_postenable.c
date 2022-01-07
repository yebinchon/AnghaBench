
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {scalar_t__* active_scan_mask; } ;


 int ST_SENSORS_ENABLE_ALL_AXIS ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;
 int st_sensors_set_axis_enable (struct iio_dev*,int ) ;
 int st_sensors_set_enable (struct iio_dev*,int) ;

__attribute__((used)) static int st_accel_buffer_postenable(struct iio_dev *indio_dev)
{
 int err;

 err = iio_triggered_buffer_postenable(indio_dev);
 if (err < 0)
  return err;

 err = st_sensors_set_axis_enable(indio_dev,
      (u8)indio_dev->active_scan_mask[0]);
 if (err < 0)
  goto st_accel_buffer_predisable;

 err = st_sensors_set_enable(indio_dev, 1);
 if (err < 0)
  goto st_accel_buffer_enable_all_axis;

 return 0;

st_accel_buffer_enable_all_axis:
 st_sensors_set_axis_enable(indio_dev, ST_SENSORS_ENABLE_ALL_AXIS);
st_accel_buffer_predisable:
 iio_triggered_buffer_predisable(indio_dev);
 return err;
}
