
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;


 int iio_buffer_put (struct iio_buffer*) ;

void iio_kfifo_free(struct iio_buffer *r)
{
 iio_buffer_put(r);
}
