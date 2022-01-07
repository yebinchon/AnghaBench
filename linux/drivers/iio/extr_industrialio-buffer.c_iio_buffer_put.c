
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int ref; } ;


 int iio_buffer_release ;
 int kref_put (int *,int ) ;

void iio_buffer_put(struct iio_buffer *buffer)
{
 if (buffer)
  kref_put(&buffer->ref, iio_buffer_release);
}
