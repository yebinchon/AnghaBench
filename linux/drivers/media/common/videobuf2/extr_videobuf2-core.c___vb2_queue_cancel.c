
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {unsigned int num_buffers; struct vb2_buffer** bufs; int done_wq; int owned_by_drv_count; int done_list; int queued_list; scalar_t__ uses_qbuf; scalar_t__ uses_requests; scalar_t__ error; scalar_t__ queued_count; scalar_t__ start_streaming_called; scalar_t__ streaming; } ;
struct TYPE_5__ {struct media_request* req; } ;
struct vb2_buffer {scalar_t__ state; unsigned int num_planes; scalar_t__ copied_timestamp; int * request; TYPE_2__ req_obj; scalar_t__ prepared; scalar_t__ synced; TYPE_1__* planes; } ;
struct media_request {int state; int lock; } ;
typedef enum media_request_state { ____Placeholder_media_request_state } media_request_state ;
struct TYPE_4__ {int mem_priv; } ;


 int INIT_LIST_HEAD (int *) ;
 int MEDIA_REQUEST_STATE_QUEUED ;
 scalar_t__ VB2_BUF_STATE_ACTIVE ;
 int VB2_BUF_STATE_ERROR ;
 scalar_t__ WARN_ON (int ) ;
 int __vb2_dqbuf (struct vb2_buffer*) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int buf_finish ;
 int buf_request_complete ;
 int call_void_memop (struct vb2_buffer*,int ,int ) ;
 int call_void_qop (struct vb2_queue*,int ,struct vb2_queue*) ;
 int call_void_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int finish ;
 int media_request_object_put (TYPE_2__*) ;
 int media_request_object_unbind (TYPE_2__*) ;
 int media_request_put (int *) ;
 int pr_warn (char*,struct vb2_buffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_streaming ;
 int vb2_buffer_done (struct vb2_buffer*,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void __vb2_queue_cancel(struct vb2_queue *q)
{
 unsigned int i;





 if (q->start_streaming_called)
  call_void_qop(q, stop_streaming, q);







 if (WARN_ON(atomic_read(&q->owned_by_drv_count))) {
  for (i = 0; i < q->num_buffers; ++i)
   if (q->bufs[i]->state == VB2_BUF_STATE_ACTIVE) {
    pr_warn("driver bug: stop_streaming operation is leaving buf %p in active state\n",
     q->bufs[i]);
    vb2_buffer_done(q->bufs[i], VB2_BUF_STATE_ERROR);
   }

  WARN_ON(atomic_read(&q->owned_by_drv_count));
 }

 q->streaming = 0;
 q->start_streaming_called = 0;
 q->queued_count = 0;
 q->error = 0;
 q->uses_requests = 0;
 q->uses_qbuf = 0;




 INIT_LIST_HEAD(&q->queued_list);




 INIT_LIST_HEAD(&q->done_list);
 atomic_set(&q->owned_by_drv_count, 0);
 wake_up_all(&q->done_wq);
 for (i = 0; i < q->num_buffers; ++i) {
  struct vb2_buffer *vb = q->bufs[i];
  struct media_request *req = vb->req_obj.req;







  if (req) {
   enum media_request_state state;
   unsigned long flags;

   spin_lock_irqsave(&req->lock, flags);
   state = req->state;
   spin_unlock_irqrestore(&req->lock, flags);

   if (state == MEDIA_REQUEST_STATE_QUEUED)
    call_void_vb_qop(vb, buf_request_complete, vb);
  }

  if (vb->synced) {
   unsigned int plane;

   for (plane = 0; plane < vb->num_planes; ++plane)
    call_void_memop(vb, finish,
      vb->planes[plane].mem_priv);
   vb->synced = 0;
  }

  if (vb->prepared) {
   call_void_vb_qop(vb, buf_finish, vb);
   vb->prepared = 0;
  }
  __vb2_dqbuf(vb);

  if (vb->req_obj.req) {
   media_request_object_unbind(&vb->req_obj);
   media_request_object_put(&vb->req_obj);
  }
  if (vb->request)
   media_request_put(vb->request);
  vb->request = ((void*)0);
  vb->copied_timestamp = 0;
 }
}
