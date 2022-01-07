
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_triggered_buffer_cleanup (struct iio_dev*) ;

void st_magn_deallocate_ring(struct iio_dev *indio_dev)
{
 iio_triggered_buffer_cleanup(indio_dev);
}
