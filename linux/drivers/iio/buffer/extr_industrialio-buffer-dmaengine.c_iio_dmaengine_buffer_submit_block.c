
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dma_buffer_queue {int buffer; } ;
struct iio_dma_buffer_block {int head; int bytes_used; int phys_addr; int size; } ;
struct TYPE_2__ {int list_lock; } ;
struct dmaengine_buffer {int chan; TYPE_1__ queue; int active; int align; int max_size; } ;
struct dma_async_tx_descriptor {struct iio_dma_buffer_block* callback_param; int callback; } ;
typedef int dma_cookie_t ;


 int DMA_DEV_TO_MEM ;
 int DMA_PREP_INTERRUPT ;
 int ENOMEM ;
 int dma_async_issue_pending (int ) ;
 int dma_submit_error (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_single (int ,int ,int ,int ,int ) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 struct dmaengine_buffer* iio_buffer_to_dmaengine_buffer (int *) ;
 int iio_dmaengine_buffer_block_done ;
 int list_add_tail (int *,int *) ;
 int min (int ,int ) ;
 int rounddown (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int iio_dmaengine_buffer_submit_block(struct iio_dma_buffer_queue *queue,
 struct iio_dma_buffer_block *block)
{
 struct dmaengine_buffer *dmaengine_buffer =
  iio_buffer_to_dmaengine_buffer(&queue->buffer);
 struct dma_async_tx_descriptor *desc;
 dma_cookie_t cookie;

 block->bytes_used = min(block->size, dmaengine_buffer->max_size);
 block->bytes_used = rounddown(block->bytes_used,
   dmaengine_buffer->align);

 desc = dmaengine_prep_slave_single(dmaengine_buffer->chan,
  block->phys_addr, block->bytes_used, DMA_DEV_TO_MEM,
  DMA_PREP_INTERRUPT);
 if (!desc)
  return -ENOMEM;

 desc->callback = iio_dmaengine_buffer_block_done;
 desc->callback_param = block;

 cookie = dmaengine_submit(desc);
 if (dma_submit_error(cookie))
  return dma_submit_error(cookie);

 spin_lock_irq(&dmaengine_buffer->queue.list_lock);
 list_add_tail(&block->head, &dmaengine_buffer->active);
 spin_unlock_irq(&dmaengine_buffer->queue.list_lock);

 dma_async_issue_pending(dmaengine_buffer->chan);

 return 0;
}
