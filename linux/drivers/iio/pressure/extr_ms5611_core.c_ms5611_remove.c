
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int ms5611_fini (struct iio_dev*) ;

int ms5611_remove(struct iio_dev *indio_dev)
{
 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 ms5611_fini(indio_dev);

 return 0;
}
