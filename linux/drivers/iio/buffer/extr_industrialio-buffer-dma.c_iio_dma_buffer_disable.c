
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dma_buffer_queue {int active; int lock; TYPE_1__* ops; } ;
struct iio_dev {int dummy; } ;
struct iio_buffer {int dummy; } ;
struct TYPE_2__ {int (* abort ) (struct iio_dma_buffer_queue*) ;} ;


 struct iio_dma_buffer_queue* iio_buffer_to_queue (struct iio_buffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iio_dma_buffer_queue*) ;

int iio_dma_buffer_disable(struct iio_buffer *buffer,
 struct iio_dev *indio_dev)
{
 struct iio_dma_buffer_queue *queue = iio_buffer_to_queue(buffer);

 mutex_lock(&queue->lock);
 queue->active = 0;

 if (queue->ops && queue->ops->abort)
  queue->ops->abort(queue);
 mutex_unlock(&queue->lock);

 return 0;
}
