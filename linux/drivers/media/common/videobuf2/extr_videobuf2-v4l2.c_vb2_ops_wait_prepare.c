
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int lock; } ;


 int mutex_unlock (int ) ;

void vb2_ops_wait_prepare(struct vb2_queue *vq)
{
 mutex_unlock(vq->lock);
}
