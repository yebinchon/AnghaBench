
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_cb_buffer {int buffer; int indio_dev; } ;


 int iio_update_buffers (int ,int *,int *) ;

int iio_channel_start_all_cb(struct iio_cb_buffer *cb_buff)
{
 return iio_update_buffers(cb_buff->indio_dev, &cb_buff->buffer,
      ((void*)0));
}
