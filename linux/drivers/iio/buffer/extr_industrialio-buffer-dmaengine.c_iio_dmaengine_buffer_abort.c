
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_queue {int buffer; } ;
struct dmaengine_buffer {int active; int chan; } ;


 int dmaengine_terminate_sync (int ) ;
 struct dmaengine_buffer* iio_buffer_to_dmaengine_buffer (int *) ;
 int iio_dma_buffer_block_list_abort (struct iio_dma_buffer_queue*,int *) ;

__attribute__((used)) static void iio_dmaengine_buffer_abort(struct iio_dma_buffer_queue *queue)
{
 struct dmaengine_buffer *dmaengine_buffer =
  iio_buffer_to_dmaengine_buffer(&queue->buffer);

 dmaengine_terminate_sync(dmaengine_buffer->chan);
 iio_dma_buffer_block_list_abort(queue, &dmaengine_buffer->active);
}
