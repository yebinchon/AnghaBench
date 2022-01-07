
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_cb_buffer {int buffer; int indio_dev; } ;


 int iio_update_buffers (int ,int *,int *) ;

void iio_channel_stop_all_cb(struct iio_cb_buffer *cb_buff)
{
 iio_update_buffers(cb_buff->indio_dev, ((void*)0), &cb_buff->buffer);
}
