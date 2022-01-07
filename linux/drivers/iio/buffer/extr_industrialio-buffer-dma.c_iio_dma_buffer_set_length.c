
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {unsigned int length; unsigned int watermark; } ;



int iio_dma_buffer_set_length(struct iio_buffer *buffer, unsigned int length)
{

 if (length < 2)
  length = 2;
 buffer->length = length;
 buffer->watermark = length / 2;

 return 0;
}
