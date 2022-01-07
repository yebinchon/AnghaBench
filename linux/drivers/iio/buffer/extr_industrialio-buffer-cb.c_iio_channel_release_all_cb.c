
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_cb_buffer {int buffer; int channels; } ;


 int iio_buffer_put (int *) ;
 int iio_channel_release_all (int ) ;

void iio_channel_release_all_cb(struct iio_cb_buffer *cb_buff)
{
 iio_channel_release_all(cb_buff->channels);
 iio_buffer_put(&cb_buff->buffer);
}
