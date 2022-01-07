
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_cb_buffer {int (* cb ) (void const*,int ) ;int private; } ;
struct iio_buffer {int dummy; } ;


 struct iio_cb_buffer* buffer_to_cb_buffer (struct iio_buffer*) ;
 int stub1 (void const*,int ) ;

__attribute__((used)) static int iio_buffer_cb_store_to(struct iio_buffer *buffer, const void *data)
{
 struct iio_cb_buffer *cb_buff = buffer_to_cb_buffer(buffer);
 return cb_buff->cb(data, cb_buff->private);
}
