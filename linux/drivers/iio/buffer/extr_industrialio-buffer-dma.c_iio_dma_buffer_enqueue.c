
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_queue {int incoming; scalar_t__ active; } ;
struct iio_dma_buffer_block {scalar_t__ state; int head; } ;


 scalar_t__ IIO_BLOCK_STATE_DEAD ;
 scalar_t__ IIO_BLOCK_STATE_QUEUED ;
 int iio_buffer_block_put (struct iio_dma_buffer_block*) ;
 int iio_dma_buffer_submit_block (struct iio_dma_buffer_queue*,struct iio_dma_buffer_block*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void iio_dma_buffer_enqueue(struct iio_dma_buffer_queue *queue,
 struct iio_dma_buffer_block *block)
{
 if (block->state == IIO_BLOCK_STATE_DEAD) {
  iio_buffer_block_put(block);
 } else if (queue->active) {
  iio_dma_buffer_submit_block(queue, block);
 } else {
  block->state = IIO_BLOCK_STATE_QUEUED;
  list_add_tail(&block->head, &queue->incoming);
 }
}
