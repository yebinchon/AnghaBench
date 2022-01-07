
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int mmap_lock; int num_buffers; } ;


 int __vb2_cleanup_fileio (struct vb2_queue*) ;
 int __vb2_queue_cancel (struct vb2_queue*) ;
 int __vb2_queue_free (struct vb2_queue*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void vb2_core_queue_release(struct vb2_queue *q)
{
 __vb2_cleanup_fileio(q);
 __vb2_queue_cancel(q);
 mutex_lock(&q->mmap_lock);
 __vb2_queue_free(q, q->num_buffers);
 mutex_unlock(&q->mmap_lock);
}
