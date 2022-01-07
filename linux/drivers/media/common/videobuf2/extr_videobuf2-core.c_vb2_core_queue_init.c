
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int buf_struct_size; scalar_t__ is_output; int dma_dir; scalar_t__ bidirectional; int memory; int done_wq; int mmap_lock; int done_lock; int done_list; int queued_list; int supports_requests; scalar_t__ requires_requests; TYPE_1__* ops; int io_modes; int type; int mem_ops; } ;
struct vb2_buffer {int dummy; } ;
struct TYPE_2__ {int buf_queue; int queue_setup; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int VB2_MEMORY_UNKNOWN ;
 scalar_t__ WARN_ON (int) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int vb2_core_queue_init(struct vb2_queue *q)
{



 if (WARN_ON(!q) ||
     WARN_ON(!q->ops) ||
     WARN_ON(!q->mem_ops) ||
     WARN_ON(!q->type) ||
     WARN_ON(!q->io_modes) ||
     WARN_ON(!q->ops->queue_setup) ||
     WARN_ON(!q->ops->buf_queue))
  return -EINVAL;

 if (WARN_ON(q->requires_requests && !q->supports_requests))
  return -EINVAL;

 INIT_LIST_HEAD(&q->queued_list);
 INIT_LIST_HEAD(&q->done_list);
 spin_lock_init(&q->done_lock);
 mutex_init(&q->mmap_lock);
 init_waitqueue_head(&q->done_wq);

 q->memory = VB2_MEMORY_UNKNOWN;

 if (q->buf_struct_size == 0)
  q->buf_struct_size = sizeof(struct vb2_buffer);

 if (q->bidirectional)
  q->dma_dir = DMA_BIDIRECTIONAL;
 else
  q->dma_dir = q->is_output ? DMA_TO_DEVICE : DMA_FROM_DEVICE;

 return 0;
}
