
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_threadio_data {scalar_t__ stop; int priv; scalar_t__ (* fnc ) (struct vb2_buffer*,int ) ;} ;
struct vb2_queue {unsigned int num_buffers; int copy_timestamp; struct vb2_buffer** bufs; scalar_t__ is_output; struct vb2_threadio_data* threadio; } ;
struct vb2_buffer {scalar_t__ state; int index; int timestamp; } ;


 int TASK_INTERRUPTIBLE ;
 scalar_t__ VB2_BUF_STATE_ERROR ;
 int call_void_qop (struct vb2_queue*,int ,struct vb2_queue*) ;
 int dprintk (int,char*,int) ;
 int kthread_should_stop () ;
 int ktime_get_ns () ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 scalar_t__ stub1 (struct vb2_buffer*,int ) ;
 int try_to_freeze () ;
 int vb2_core_dqbuf (struct vb2_queue*,unsigned int*,int *,int ) ;
 int vb2_core_qbuf (struct vb2_queue*,int ,int *,int *) ;
 int wait_finish ;
 int wait_prepare ;

__attribute__((used)) static int vb2_thread(void *data)
{
 struct vb2_queue *q = data;
 struct vb2_threadio_data *threadio = q->threadio;
 bool copy_timestamp = 0;
 unsigned prequeue = 0;
 unsigned index = 0;
 int ret = 0;

 if (q->is_output) {
  prequeue = q->num_buffers;
  copy_timestamp = q->copy_timestamp;
 }

 set_freezable();

 for (;;) {
  struct vb2_buffer *vb;




  if (prequeue) {
   vb = q->bufs[index++];
   prequeue--;
  } else {
   call_void_qop(q, wait_finish, q);
   if (!threadio->stop)
    ret = vb2_core_dqbuf(q, &index, ((void*)0), 0);
   call_void_qop(q, wait_prepare, q);
   dprintk(5, "file io: vb2_dqbuf result: %d\n", ret);
   if (!ret)
    vb = q->bufs[index];
  }
  if (ret || threadio->stop)
   break;
  try_to_freeze();

  if (vb->state != VB2_BUF_STATE_ERROR)
   if (threadio->fnc(vb, threadio->priv))
    break;
  call_void_qop(q, wait_finish, q);
  if (copy_timestamp)
   vb->timestamp = ktime_get_ns();
  if (!threadio->stop)
   ret = vb2_core_qbuf(q, vb->index, ((void*)0), ((void*)0));
  call_void_qop(q, wait_prepare, q);
  if (ret || threadio->stop)
   break;
 }


 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();
 }
 return 0;
}
