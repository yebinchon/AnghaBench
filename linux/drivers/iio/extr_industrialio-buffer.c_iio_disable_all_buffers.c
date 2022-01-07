
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int iio_buffer_deactivate_all (struct iio_dev*) ;
 int iio_disable_buffers (struct iio_dev*) ;

void iio_disable_all_buffers(struct iio_dev *indio_dev)
{
 iio_disable_buffers(indio_dev);
 iio_buffer_deactivate_all(indio_dev);
}
