
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * active_block; TYPE_2__** blocks; } ;
struct iio_dma_buffer_queue {int lock; int * ops; TYPE_1__ fileio; int incoming; int list_lock; int outgoing; } ;
struct TYPE_5__ {int state; } ;


 unsigned int ARRAY_SIZE (TYPE_2__**) ;
 int IIO_BLOCK_STATE_DEAD ;
 int INIT_LIST_HEAD (int *) ;
 int iio_buffer_block_put (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void iio_dma_buffer_exit(struct iio_dma_buffer_queue *queue)
{
 unsigned int i;

 mutex_lock(&queue->lock);

 spin_lock_irq(&queue->list_lock);
 for (i = 0; i < ARRAY_SIZE(queue->fileio.blocks); i++) {
  if (!queue->fileio.blocks[i])
   continue;
  queue->fileio.blocks[i]->state = IIO_BLOCK_STATE_DEAD;
 }
 INIT_LIST_HEAD(&queue->outgoing);
 spin_unlock_irq(&queue->list_lock);

 INIT_LIST_HEAD(&queue->incoming);

 for (i = 0; i < ARRAY_SIZE(queue->fileio.blocks); i++) {
  if (!queue->fileio.blocks[i])
   continue;
  iio_buffer_block_put(queue->fileio.blocks[i]);
  queue->fileio.blocks[i] = ((void*)0);
 }
 queue->fileio.active_block = ((void*)0);
 queue->ops = ((void*)0);

 mutex_unlock(&queue->lock);
}
