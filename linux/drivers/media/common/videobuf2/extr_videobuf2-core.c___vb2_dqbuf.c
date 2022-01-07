
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct vb2_buffer {scalar_t__ state; struct vb2_queue* vb2_queue; } ;


 scalar_t__ VB2_BUF_STATE_DEQUEUED ;
 int call_void_bufop (struct vb2_queue*,int ,struct vb2_buffer*) ;
 int init_buffer ;

__attribute__((used)) static void __vb2_dqbuf(struct vb2_buffer *vb)
{
 struct vb2_queue *q = vb->vb2_queue;


 if (vb->state == VB2_BUF_STATE_DEQUEUED)
  return;

 vb->state = VB2_BUF_STATE_DEQUEUED;

 call_void_bufop(q, init_buffer, vb);
}
