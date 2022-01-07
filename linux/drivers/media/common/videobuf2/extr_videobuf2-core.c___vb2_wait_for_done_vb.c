
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int waiting_in_dqbuf; scalar_t__ error; int streaming; int done_list; int done_wq; scalar_t__ last_buffer_dequeued; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EPIPE ;
 int call_void_qop (struct vb2_queue*,int ,struct vb2_queue*) ;
 int dprintk (int,char*) ;
 int list_empty (int *) ;
 int wait_event_interruptible (int ,int) ;
 int wait_finish ;
 int wait_prepare ;

__attribute__((used)) static int __vb2_wait_for_done_vb(struct vb2_queue *q, int nonblocking)
{
 for (;;) {
  int ret;

  if (q->waiting_in_dqbuf) {
   dprintk(1, "another dup()ped fd is waiting for a buffer\n");
   return -EBUSY;
  }

  if (!q->streaming) {
   dprintk(1, "streaming off, will not wait for buffers\n");
   return -EINVAL;
  }

  if (q->error) {
   dprintk(1, "Queue in error state, will not wait for buffers\n");
   return -EIO;
  }

  if (q->last_buffer_dequeued) {
   dprintk(3, "last buffer dequeued already, will not wait for buffers\n");
   return -EPIPE;
  }

  if (!list_empty(&q->done_list)) {



   break;
  }

  if (nonblocking) {
   dprintk(3, "nonblocking and no buffers to dequeue, will not wait\n");
   return -EAGAIN;
  }

  q->waiting_in_dqbuf = 1;





  call_void_qop(q, wait_prepare, q);




  dprintk(3, "will sleep waiting for buffers\n");
  ret = wait_event_interruptible(q->done_wq,
    !list_empty(&q->done_list) || !q->streaming ||
    q->error);





  call_void_qop(q, wait_finish, q);
  q->waiting_in_dqbuf = 0;
  if (ret) {
   dprintk(1, "sleep was interrupted\n");
   return ret;
  }
 }
 return 0;
}
