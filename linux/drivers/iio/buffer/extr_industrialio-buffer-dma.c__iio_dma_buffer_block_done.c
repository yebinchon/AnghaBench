
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_queue {int outgoing; } ;
struct iio_dma_buffer_block {scalar_t__ state; int head; struct iio_dma_buffer_queue* queue; } ;


 scalar_t__ IIO_BLOCK_STATE_DEAD ;
 scalar_t__ IIO_BLOCK_STATE_DONE ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void _iio_dma_buffer_block_done(struct iio_dma_buffer_block *block)
{
 struct iio_dma_buffer_queue *queue = block->queue;





 if (block->state != IIO_BLOCK_STATE_DEAD) {
  block->state = IIO_BLOCK_STATE_DONE;
  list_add_tail(&block->head, &queue->outgoing);
 }
}
