
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int owned_by_drv_count; } ;
struct vb2_buffer {int state; struct vb2_queue* vb2_queue; } ;


 int VB2_BUF_STATE_ACTIVE ;
 int atomic_inc (int *) ;
 int buf_queue ;
 int call_void_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int trace_vb2_buf_queue (struct vb2_queue*,struct vb2_buffer*) ;

__attribute__((used)) static void __enqueue_in_driver(struct vb2_buffer *vb)
{
 struct vb2_queue *q = vb->vb2_queue;

 vb->state = VB2_BUF_STATE_ACTIVE;
 atomic_inc(&q->owned_by_drv_count);

 trace_vb2_buf_queue(q, vb);

 call_void_vb_qop(vb, buf_queue, vb);
}
