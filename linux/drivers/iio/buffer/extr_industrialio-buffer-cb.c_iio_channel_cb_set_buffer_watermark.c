
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t watermark; } ;
struct iio_cb_buffer {TYPE_1__ buffer; } ;


 int EINVAL ;

int iio_channel_cb_set_buffer_watermark(struct iio_cb_buffer *cb_buff,
     size_t watermark)
{
 if (!watermark)
  return -EINVAL;
 cb_buff->buffer.watermark = watermark;

 return 0;
}
