
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int st_gyro_buffer_setup_ops ;
 int st_sensors_trigger_handler ;

int st_gyro_allocate_ring(struct iio_dev *indio_dev)
{
 return iio_triggered_buffer_setup(indio_dev, ((void*)0),
  &st_sensors_trigger_handler, &st_gyro_buffer_setup_ops);
}
