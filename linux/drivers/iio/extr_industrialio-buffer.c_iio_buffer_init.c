
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int watermark; int ref; int pollq; int buffer_list; int demux_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;

void iio_buffer_init(struct iio_buffer *buffer)
{
 INIT_LIST_HEAD(&buffer->demux_list);
 INIT_LIST_HEAD(&buffer->buffer_list);
 init_waitqueue_head(&buffer->pollq);
 kref_init(&buffer->ref);
 if (!buffer->watermark)
  buffer->watermark = 1;
}
