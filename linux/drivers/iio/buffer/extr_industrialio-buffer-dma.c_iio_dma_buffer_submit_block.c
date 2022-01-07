
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dma_buffer_queue {TYPE_1__* ops; } ;
struct iio_dma_buffer_block {int state; } ;
struct TYPE_2__ {int (* submit ) (struct iio_dma_buffer_queue*,struct iio_dma_buffer_block*) ;} ;


 int IIO_BLOCK_STATE_ACTIVE ;
 int iio_buffer_block_get (struct iio_dma_buffer_block*) ;
 int iio_buffer_block_put (struct iio_dma_buffer_block*) ;
 int stub1 (struct iio_dma_buffer_queue*,struct iio_dma_buffer_block*) ;

__attribute__((used)) static void iio_dma_buffer_submit_block(struct iio_dma_buffer_queue *queue,
 struct iio_dma_buffer_block *block)
{
 int ret;






 if (!queue->ops)
  return;

 block->state = IIO_BLOCK_STATE_ACTIVE;
 iio_buffer_block_get(block);
 ret = queue->ops->submit(queue, block);
 if (ret) {
  iio_buffer_block_put(block);
 }
}
