
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int owned_by_drv_count; int done_wq; scalar_t__ start_streaming_called; int streaming; } ;


 int EINVAL ;
 int atomic_read (int *) ;
 int dprintk (int,char*) ;
 int wait_event (int ,int) ;

int vb2_wait_for_all_buffers(struct vb2_queue *q)
{
 if (!q->streaming) {
  dprintk(1, "streaming off, will not wait for buffers\n");
  return -EINVAL;
 }

 if (q->start_streaming_called)
  wait_event(q->done_wq, !atomic_read(&q->owned_by_drv_count));
 return 0;
}
