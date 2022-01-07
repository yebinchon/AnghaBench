
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer; } ;
struct iio_buffer {int dummy; } ;


 int iio_buffer_get (struct iio_buffer*) ;

void iio_device_attach_buffer(struct iio_dev *indio_dev,
         struct iio_buffer *buffer)
{
 indio_dev->buffer = iio_buffer_get(buffer);
}
