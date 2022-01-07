
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;
struct iio_cb_buffer {struct iio_channel* channels; } ;



struct iio_channel
*iio_channel_cb_get_channels(const struct iio_cb_buffer *cb_buffer)
{
 return cb_buffer->channels;
}
