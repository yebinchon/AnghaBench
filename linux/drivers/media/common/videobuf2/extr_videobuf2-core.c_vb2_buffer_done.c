
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int done_wq; int done_lock; int owned_by_drv_count; int done_list; } ;
struct TYPE_5__ {scalar_t__ req; } ;
struct vb2_buffer {scalar_t__ state; unsigned int num_planes; TYPE_2__ req_obj; int done_entry; scalar_t__ synced; TYPE_1__* planes; int index; int cnt_buf_done; struct vb2_queue* vb2_queue; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_4__ {int mem_priv; } ;


 scalar_t__ VB2_BUF_STATE_ACTIVE ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;

 scalar_t__ WARN_ON (int) ;
 int atomic_dec (int *) ;
 int call_void_memop (struct vb2_buffer*,int ,int ) ;
 int dprintk (int,char*,int ,int) ;
 int finish ;
 int list_add_tail (int *,int *) ;
 int media_request_object_put (TYPE_2__*) ;
 int media_request_object_unbind (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_vb2_buf_done (struct vb2_queue*,struct vb2_buffer*) ;
 int wake_up (int *) ;

void vb2_buffer_done(struct vb2_buffer *vb, enum vb2_buffer_state state)
{
 struct vb2_queue *q = vb->vb2_queue;
 unsigned long flags;
 unsigned int plane;

 if (WARN_ON(vb->state != VB2_BUF_STATE_ACTIVE))
  return;

 if (WARN_ON(state != VB2_BUF_STATE_DONE &&
      state != VB2_BUF_STATE_ERROR &&
      state != 128))
  state = VB2_BUF_STATE_ERROR;
 dprintk(4, "done processing on buffer %d, state: %d\n",
   vb->index, state);

 if (state != 128) {

  for (plane = 0; plane < vb->num_planes; ++plane)
   call_void_memop(vb, finish, vb->planes[plane].mem_priv);
  vb->synced = 0;
 }

 spin_lock_irqsave(&q->done_lock, flags);
 if (state == 128) {
  vb->state = 128;
 } else {

  list_add_tail(&vb->done_entry, &q->done_list);
  vb->state = state;
 }
 atomic_dec(&q->owned_by_drv_count);

 if (state != 128 && vb->req_obj.req) {
  media_request_object_unbind(&vb->req_obj);
  media_request_object_put(&vb->req_obj);
 }

 spin_unlock_irqrestore(&q->done_lock, flags);

 trace_vb2_buf_done(q, vb);

 switch (state) {
 case 128:
  return;
 default:

  wake_up(&q->done_wq);
  break;
 }
}
