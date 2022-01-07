
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int buffer_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static bool iio_buffer_is_active(struct iio_buffer *buf)
{
 return !list_empty(&buf->buffer_list);
}
