
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {struct attribute const** attrs; } ;
struct attribute {int dummy; } ;



void iio_buffer_set_attrs(struct iio_buffer *buffer,
    const struct attribute **attrs)
{
 buffer->attrs = attrs;
}
