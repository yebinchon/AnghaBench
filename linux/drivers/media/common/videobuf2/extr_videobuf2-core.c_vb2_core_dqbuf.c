
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int queued_count; } ;
struct TYPE_3__ {int req; } ;
struct vb2_buffer {int state; unsigned int index; int * request; TYPE_1__ req_obj; int queued_entry; scalar_t__ prepared; } ;


 int EINVAL ;


 scalar_t__ WARN_ON (int ) ;
 int __vb2_dqbuf (struct vb2_buffer*) ;
 int __vb2_get_done_vb (struct vb2_queue*,struct vb2_buffer**,void*,int) ;
 int buf_finish ;
 int call_void_bufop (struct vb2_queue*,int ,struct vb2_buffer*,void*) ;
 int call_void_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int dprintk (int,char*,...) ;
 int fill_user_buffer ;
 int list_del (int *) ;
 int media_request_object_put (TYPE_1__*) ;
 int media_request_object_unbind (TYPE_1__*) ;
 int media_request_put (int *) ;
 int trace_vb2_dqbuf (struct vb2_queue*,struct vb2_buffer*) ;

int vb2_core_dqbuf(struct vb2_queue *q, unsigned int *pindex, void *pb,
     bool nonblocking)
{
 struct vb2_buffer *vb = ((void*)0);
 int ret;

 ret = __vb2_get_done_vb(q, &vb, pb, nonblocking);
 if (ret < 0)
  return ret;

 switch (vb->state) {
 case 129:
  dprintk(3, "returning done buffer\n");
  break;
 case 128:
  dprintk(3, "returning done buffer with errors\n");
  break;
 default:
  dprintk(1, "invalid buffer state\n");
  return -EINVAL;
 }

 call_void_vb_qop(vb, buf_finish, vb);
 vb->prepared = 0;

 if (pindex)
  *pindex = vb->index;


 if (pb)
  call_void_bufop(q, fill_user_buffer, vb, pb);


 list_del(&vb->queued_entry);
 q->queued_count--;

 trace_vb2_dqbuf(q, vb);


 __vb2_dqbuf(vb);

 if (WARN_ON(vb->req_obj.req)) {
  media_request_object_unbind(&vb->req_obj);
  media_request_object_put(&vb->req_obj);
 }
 if (vb->request)
  media_request_put(vb->request);
 vb->request = ((void*)0);

 dprintk(2, "dqbuf of buffer %d, with state %d\n",
   vb->index, vb->state);

 return 0;

}
