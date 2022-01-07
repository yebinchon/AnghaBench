
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_queue {int lock; } ;


 int mutex_destroy (int *) ;

void iio_dma_buffer_release(struct iio_dma_buffer_queue *queue)
{
 mutex_destroy(&queue->lock);
}
