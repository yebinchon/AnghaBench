
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {unsigned int type; int waiting_for_buffers; int last_buffer_dequeued; int is_output; } ;


 int EINVAL ;
 int __vb2_queue_cancel (struct vb2_queue*) ;
 int dprintk (int,char*) ;

int vb2_core_streamoff(struct vb2_queue *q, unsigned int type)
{
 if (type != q->type) {
  dprintk(1, "invalid stream type\n");
  return -EINVAL;
 }
 __vb2_queue_cancel(q);
 q->waiting_for_buffers = !q->is_output;
 q->last_buffer_dequeued = 0;

 dprintk(3, "successful\n");
 return 0;
}
