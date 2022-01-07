
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vb2_thread_fnc ;
struct vb2_threadio_data {int * thread; void* priv; int fnc; } ;
struct vb2_queue {struct vb2_threadio_data* threadio; int is_output; int fileio; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ WARN_ON (int ) ;
 int __vb2_cleanup_fileio (struct vb2_queue*) ;
 int __vb2_init_fileio (struct vb2_queue*,int) ;
 int dprintk (int,char*,int) ;
 int kfree (struct vb2_threadio_data*) ;
 int * kthread_run (int ,struct vb2_queue*,char*,char const*) ;
 struct vb2_threadio_data* kzalloc (int,int ) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 int vb2_thread ;

int vb2_thread_start(struct vb2_queue *q, vb2_thread_fnc fnc, void *priv,
       const char *thread_name)
{
 struct vb2_threadio_data *threadio;
 int ret = 0;

 if (q->threadio)
  return -EBUSY;
 if (vb2_is_busy(q))
  return -EBUSY;
 if (WARN_ON(q->fileio))
  return -EBUSY;

 threadio = kzalloc(sizeof(*threadio), GFP_KERNEL);
 if (threadio == ((void*)0))
  return -ENOMEM;
 threadio->fnc = fnc;
 threadio->priv = priv;

 ret = __vb2_init_fileio(q, !q->is_output);
 dprintk(3, "file io: vb2_init_fileio result: %d\n", ret);
 if (ret)
  goto nomem;
 q->threadio = threadio;
 threadio->thread = kthread_run(vb2_thread, q, "vb2-%s", thread_name);
 if (IS_ERR(threadio->thread)) {
  ret = PTR_ERR(threadio->thread);
  threadio->thread = ((void*)0);
  goto nothread;
 }
 return 0;

nothread:
 __vb2_cleanup_fileio(q);
nomem:
 kfree(threadio);
 return ret;
}
