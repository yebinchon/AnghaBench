
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_queue {int dequeue_work; int ack_queue; int qlock; } ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void virtio_gpu_init_vq(struct virtio_gpu_queue *vgvq,
          void (*work_func)(struct work_struct *work))
{
 spin_lock_init(&vgvq->qlock);
 init_waitqueue_head(&vgvq->ack_queue);
 INIT_WORK(&vgvq->dequeue_work, work_func);
}
