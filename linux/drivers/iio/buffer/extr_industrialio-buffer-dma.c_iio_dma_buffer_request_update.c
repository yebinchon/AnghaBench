
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t block_size; struct iio_dma_buffer_block** blocks; int * active_block; } ;
struct TYPE_3__ {int bytes_per_datum; int length; } ;
struct iio_dma_buffer_queue {int lock; int incoming; TYPE_2__ fileio; int list_lock; int outgoing; TYPE_1__ buffer; } ;
struct iio_dma_buffer_block {scalar_t__ state; size_t size; int head; } ;
struct iio_buffer {int dummy; } ;


 int ARRAY_SIZE (struct iio_dma_buffer_block**) ;
 size_t DIV_ROUND_UP (int,int) ;
 int ENOMEM ;
 scalar_t__ IIO_BLOCK_STATE_DEAD ;
 scalar_t__ IIO_BLOCK_STATE_QUEUED ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_ALIGN (size_t) ;
 int iio_buffer_block_put (struct iio_dma_buffer_block*) ;
 struct iio_dma_buffer_queue* iio_buffer_to_queue (struct iio_buffer*) ;
 int iio_dma_block_reusable (struct iio_dma_buffer_block*) ;
 struct iio_dma_buffer_block* iio_dma_buffer_alloc_block (struct iio_dma_buffer_queue*,size_t) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int iio_dma_buffer_request_update(struct iio_buffer *buffer)
{
 struct iio_dma_buffer_queue *queue = iio_buffer_to_queue(buffer);
 struct iio_dma_buffer_block *block;
 bool try_reuse = 0;
 size_t size;
 int ret = 0;
 int i;






 size = DIV_ROUND_UP(queue->buffer.bytes_per_datum *
  queue->buffer.length, 2);

 mutex_lock(&queue->lock);


 if (PAGE_ALIGN(queue->fileio.block_size) == PAGE_ALIGN(size))
  try_reuse = 1;

 queue->fileio.block_size = size;
 queue->fileio.active_block = ((void*)0);

 spin_lock_irq(&queue->list_lock);
 for (i = 0; i < ARRAY_SIZE(queue->fileio.blocks); i++) {
  block = queue->fileio.blocks[i];


  if (block && (!iio_dma_block_reusable(block) || !try_reuse))
   block->state = IIO_BLOCK_STATE_DEAD;
 }






 INIT_LIST_HEAD(&queue->outgoing);
 spin_unlock_irq(&queue->list_lock);

 INIT_LIST_HEAD(&queue->incoming);

 for (i = 0; i < ARRAY_SIZE(queue->fileio.blocks); i++) {
  if (queue->fileio.blocks[i]) {
   block = queue->fileio.blocks[i];
   if (block->state == IIO_BLOCK_STATE_DEAD) {

    iio_buffer_block_put(block);
    block = ((void*)0);
   } else {
    block->size = size;
   }
  } else {
   block = ((void*)0);
  }

  if (!block) {
   block = iio_dma_buffer_alloc_block(queue, size);
   if (!block) {
    ret = -ENOMEM;
    goto out_unlock;
   }
   queue->fileio.blocks[i] = block;
  }

  block->state = IIO_BLOCK_STATE_QUEUED;
  list_add_tail(&block->head, &queue->incoming);
 }

out_unlock:
 mutex_unlock(&queue->lock);

 return ret;
}
