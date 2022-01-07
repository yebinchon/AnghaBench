
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer_list; } ;
struct iio_buffer {int buffer_list; } ;


 int iio_buffer_get (struct iio_buffer*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void iio_buffer_activate(struct iio_dev *indio_dev,
 struct iio_buffer *buffer)
{
 iio_buffer_get(buffer);
 list_add(&buffer->buffer_list, &indio_dev->buffer_list);
}
