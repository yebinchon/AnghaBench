
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_queue {int buffer; int dev; } ;
struct iio_dma_buffer_block {size_t size; int kref; int head; struct iio_dma_buffer_queue* queue; int state; int vaddr; int phys_addr; } ;


 int GFP_KERNEL ;
 int IIO_BLOCK_STATE_DEQUEUED ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_ALIGN (size_t) ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int iio_buffer_get (int *) ;
 int kfree (struct iio_dma_buffer_block*) ;
 int kref_init (int *) ;
 struct iio_dma_buffer_block* kzalloc (int,int ) ;

__attribute__((used)) static struct iio_dma_buffer_block *iio_dma_buffer_alloc_block(
 struct iio_dma_buffer_queue *queue, size_t size)
{
 struct iio_dma_buffer_block *block;

 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (!block)
  return ((void*)0);

 block->vaddr = dma_alloc_coherent(queue->dev, PAGE_ALIGN(size),
  &block->phys_addr, GFP_KERNEL);
 if (!block->vaddr) {
  kfree(block);
  return ((void*)0);
 }

 block->size = size;
 block->state = IIO_BLOCK_STATE_DEQUEUED;
 block->queue = queue;
 INIT_LIST_HEAD(&block->head);
 kref_init(&block->kref);

 iio_buffer_get(&queue->buffer);

 return block;
}
