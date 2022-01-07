
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scan_mask; } ;
struct iio_cb_buffer {TYPE_1__ buffer; } ;
struct iio_buffer {int dummy; } ;


 int bitmap_free (int ) ;
 struct iio_cb_buffer* buffer_to_cb_buffer (struct iio_buffer*) ;
 int kfree (struct iio_cb_buffer*) ;

__attribute__((used)) static void iio_buffer_cb_release(struct iio_buffer *buffer)
{
 struct iio_cb_buffer *cb_buff = buffer_to_cb_buffer(buffer);

 bitmap_free(cb_buff->buffer.scan_mask);
 kfree(cb_buff);
}
