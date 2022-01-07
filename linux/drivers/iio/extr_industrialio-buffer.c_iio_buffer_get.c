
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int ref; } ;


 int kref_get (int *) ;

struct iio_buffer *iio_buffer_get(struct iio_buffer *buffer)
{
 if (buffer)
  kref_get(&buffer->ref);

 return buffer;
}
