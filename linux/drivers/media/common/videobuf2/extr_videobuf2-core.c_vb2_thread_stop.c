
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_threadio_data {int stop; int * thread; } ;
struct vb2_queue {struct vb2_threadio_data* threadio; } ;


 int __vb2_cleanup_fileio (struct vb2_queue*) ;
 int kfree (struct vb2_threadio_data*) ;
 int kthread_stop (int *) ;
 int vb2_queue_error (struct vb2_queue*) ;

int vb2_thread_stop(struct vb2_queue *q)
{
 struct vb2_threadio_data *threadio = q->threadio;
 int err;

 if (threadio == ((void*)0))
  return 0;
 threadio->stop = 1;

 vb2_queue_error(q);
 err = kthread_stop(threadio->thread);
 __vb2_cleanup_fileio(q);
 threadio->thread = ((void*)0);
 kfree(threadio);
 q->threadio = ((void*)0);
 return err;
}
