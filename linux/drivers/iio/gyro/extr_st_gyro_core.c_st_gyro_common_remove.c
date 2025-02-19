
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {scalar_t__ irq; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_gyro_deallocate_ring (struct iio_dev*) ;
 int st_sensors_deallocate_trigger (struct iio_dev*) ;
 int st_sensors_power_disable (struct iio_dev*) ;

void st_gyro_common_remove(struct iio_dev *indio_dev)
{
 struct st_sensor_data *gdata = iio_priv(indio_dev);

 st_sensors_power_disable(indio_dev);

 iio_device_unregister(indio_dev);
 if (gdata->irq > 0)
  st_sensors_deallocate_trigger(indio_dev);

 st_gyro_deallocate_ring(indio_dev);
}
