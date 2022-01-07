
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int watermark; } ;
struct iio_dma_buffer_queue {int list_lock; int lock; int outgoing; int incoming; struct iio_dma_buffer_ops const* ops; struct device* dev; TYPE_1__ buffer; } ;
struct iio_dma_buffer_ops {int dummy; } ;
struct device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int iio_buffer_init (TYPE_1__*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int iio_dma_buffer_init(struct iio_dma_buffer_queue *queue,
 struct device *dev, const struct iio_dma_buffer_ops *ops)
{
 iio_buffer_init(&queue->buffer);
 queue->buffer.length = PAGE_SIZE;
 queue->buffer.watermark = queue->buffer.length / 2;
 queue->dev = dev;
 queue->ops = ops;

 INIT_LIST_HEAD(&queue->incoming);
 INIT_LIST_HEAD(&queue->outgoing);

 mutex_init(&queue->lock);
 spin_lock_init(&queue->list_lock);

 return 0;
}
