
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;
struct dmaengine_buffer {int chan; int queue; } ;


 int dma_release_channel (int ) ;
 int iio_buffer_put (struct iio_buffer*) ;
 struct dmaengine_buffer* iio_buffer_to_dmaengine_buffer (struct iio_buffer*) ;
 int iio_dma_buffer_exit (int *) ;

void iio_dmaengine_buffer_free(struct iio_buffer *buffer)
{
 struct dmaengine_buffer *dmaengine_buffer =
  iio_buffer_to_dmaengine_buffer(buffer);

 iio_dma_buffer_exit(&dmaengine_buffer->queue);
 dma_release_channel(dmaengine_buffer->chan);

 iio_buffer_put(buffer);
}
