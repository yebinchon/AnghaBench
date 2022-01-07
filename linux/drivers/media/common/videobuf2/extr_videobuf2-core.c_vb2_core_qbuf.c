
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int uses_qbuf; int uses_requests; scalar_t__ queued_count; int waiting_for_buffers; scalar_t__ min_buffers_needed; scalar_t__ start_streaming_called; scalar_t__ streaming; int queued_list; scalar_t__ is_output; scalar_t__ requires_requests; struct vb2_buffer** bufs; scalar_t__ error; } ;
struct vb2_buffer {int state; int index; int queued_entry; int prepared; struct media_request* request; int req_obj; } ;
struct media_request {int dummy; } ;


 int EBADR ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;



 int VB2_BUF_STATE_QUEUED ;
 int __buf_prepare (struct vb2_buffer*) ;
 int __enqueue_in_driver (struct vb2_buffer*) ;
 int buf_out_validate ;
 int call_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int call_void_bufop (struct vb2_queue*,int ,struct vb2_buffer*,void*) ;
 int copy_timestamp ;
 int dprintk (int,char*,...) ;
 int fill_user_buffer ;
 int list_add_tail (int *,int *) ;
 int media_request_get (struct media_request*) ;
 int media_request_lock_for_update (struct media_request*) ;
 int media_request_object_bind (struct media_request*,int *,struct vb2_queue*,int,int *) ;
 int media_request_object_init (int *) ;
 int media_request_unlock_for_update (struct media_request*) ;
 int trace_vb2_qbuf (struct vb2_queue*,struct vb2_buffer*) ;
 int vb2_core_req_ops ;
 int vb2_start_streaming (struct vb2_queue*) ;

int vb2_core_qbuf(struct vb2_queue *q, unsigned int index, void *pb,
    struct media_request *req)
{
 struct vb2_buffer *vb;
 int ret;

 if (q->error) {
  dprintk(1, "fatal error occurred on queue\n");
  return -EIO;
 }

 vb = q->bufs[index];

 if (!req && vb->state != 129 &&
     q->requires_requests) {
  dprintk(1, "qbuf requires a request\n");
  return -EBADR;
 }

 if ((req && q->uses_qbuf) ||
     (!req && vb->state != 129 &&
      q->uses_requests)) {
  dprintk(1, "queue in wrong mode (qbuf vs requests)\n");
  return -EBUSY;
 }

 if (req) {
  int ret;

  q->uses_requests = 1;
  if (vb->state != 130) {
   dprintk(1, "buffer %d not in dequeued state\n",
    vb->index);
   return -EINVAL;
  }

  if (q->is_output && !vb->prepared) {
   ret = call_vb_qop(vb, buf_out_validate, vb);
   if (ret) {
    dprintk(1, "buffer validation failed\n");
    return ret;
   }
  }

  media_request_object_init(&vb->req_obj);


  ret = media_request_lock_for_update(req);
  if (ret)
   return ret;
  ret = media_request_object_bind(req, &vb2_core_req_ops,
      q, 1, &vb->req_obj);
  media_request_unlock_for_update(req);
  if (ret)
   return ret;

  vb->state = 129;
  media_request_get(req);
  vb->request = req;


  if (pb) {
   call_void_bufop(q, copy_timestamp, vb, pb);
   call_void_bufop(q, fill_user_buffer, vb, pb);
  }

  dprintk(2, "qbuf of buffer %d succeeded\n", vb->index);
  return 0;
 }

 if (vb->state != 129)
  q->uses_qbuf = 1;

 switch (vb->state) {
 case 130:
 case 129:
  if (!vb->prepared) {
   ret = __buf_prepare(vb);
   if (ret)
    return ret;
  }
  break;
 case 128:
  dprintk(1, "buffer still being prepared\n");
  return -EINVAL;
 default:
  dprintk(1, "invalid buffer state %d\n", vb->state);
  return -EINVAL;
 }





 list_add_tail(&vb->queued_entry, &q->queued_list);
 q->queued_count++;
 q->waiting_for_buffers = 0;
 vb->state = VB2_BUF_STATE_QUEUED;

 if (pb)
  call_void_bufop(q, copy_timestamp, vb, pb);

 trace_vb2_qbuf(q, vb);





 if (q->start_streaming_called)
  __enqueue_in_driver(vb);


 if (pb)
  call_void_bufop(q, fill_user_buffer, vb, pb);







 if (q->streaming && !q->start_streaming_called &&
     q->queued_count >= q->min_buffers_needed) {
  ret = vb2_start_streaming(q);
  if (ret)
   return ret;
 }

 dprintk(2, "qbuf of buffer %d succeeded\n", vb->index);
 return 0;
}
