
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer; int pollfunc; } ;


 int iio_dealloc_pollfunc (int ) ;
 int iio_kfifo_free (int ) ;

void iio_simple_dummy_unconfigure_buffer(struct iio_dev *indio_dev)
{
 iio_dealloc_pollfunc(indio_dev->pollfunc);
 iio_kfifo_free(indio_dev->buffer);
}
