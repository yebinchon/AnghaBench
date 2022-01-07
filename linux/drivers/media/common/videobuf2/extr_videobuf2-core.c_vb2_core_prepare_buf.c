
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {struct vb2_buffer** bufs; } ;
struct vb2_buffer {scalar_t__ state; scalar_t__ index; scalar_t__ prepared; } ;


 int EINVAL ;
 scalar_t__ VB2_BUF_STATE_DEQUEUED ;
 int __buf_prepare (struct vb2_buffer*) ;
 int call_void_bufop (struct vb2_queue*,int ,struct vb2_buffer*,void*) ;
 int dprintk (int,char*,...) ;
 int fill_user_buffer ;

int vb2_core_prepare_buf(struct vb2_queue *q, unsigned int index, void *pb)
{
 struct vb2_buffer *vb;
 int ret;

 vb = q->bufs[index];
 if (vb->state != VB2_BUF_STATE_DEQUEUED) {
  dprintk(1, "invalid buffer state %d\n",
   vb->state);
  return -EINVAL;
 }
 if (vb->prepared) {
  dprintk(1, "buffer already prepared\n");
  return -EINVAL;
 }

 ret = __buf_prepare(vb);
 if (ret)
  return ret;


 call_void_bufop(q, fill_user_buffer, vb, pb);

 dprintk(2, "prepare of buffer %d succeeded\n", vb->index);

 return 0;
}
