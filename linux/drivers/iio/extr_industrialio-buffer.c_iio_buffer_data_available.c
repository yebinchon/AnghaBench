
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_buffer {TYPE_1__* access; } ;
struct TYPE_2__ {size_t (* data_available ) (struct iio_buffer*) ;} ;


 size_t stub1 (struct iio_buffer*) ;

__attribute__((used)) static size_t iio_buffer_data_available(struct iio_buffer *buf)
{
 return buf->access->data_available(buf);
}
