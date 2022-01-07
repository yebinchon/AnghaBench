
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pollq; } ;
struct iio_dma_buffer_queue {TYPE_1__ buffer; int list_lock; } ;
struct iio_dma_buffer_block {struct iio_dma_buffer_queue* queue; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int _iio_dma_buffer_block_done (struct iio_dma_buffer_block*) ;
 int iio_buffer_block_put_atomic (struct iio_dma_buffer_block*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible_poll (int *,int) ;

void iio_dma_buffer_block_done(struct iio_dma_buffer_block *block)
{
 struct iio_dma_buffer_queue *queue = block->queue;
 unsigned long flags;

 spin_lock_irqsave(&queue->list_lock, flags);
 _iio_dma_buffer_block_done(block);
 spin_unlock_irqrestore(&queue->list_lock, flags);

 iio_buffer_block_put_atomic(block);
 wake_up_interruptible_poll(&queue->buffer.pollq, EPOLLIN | EPOLLRDNORM);
}
