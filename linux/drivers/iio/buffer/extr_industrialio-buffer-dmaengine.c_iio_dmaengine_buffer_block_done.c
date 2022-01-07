
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dma_buffer_block {TYPE_1__* queue; int head; } ;
struct TYPE_2__ {int list_lock; } ;


 int iio_dma_buffer_block_done (struct iio_dma_buffer_block*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iio_dmaengine_buffer_block_done(void *data)
{
 struct iio_dma_buffer_block *block = data;
 unsigned long flags;

 spin_lock_irqsave(&block->queue->list_lock, flags);
 list_del(&block->head);
 spin_unlock_irqrestore(&block->queue->list_lock, flags);
 iio_dma_buffer_block_done(block);
}
