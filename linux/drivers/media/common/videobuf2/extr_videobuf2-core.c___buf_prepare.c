
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int memory; scalar_t__ is_output; scalar_t__ error; } ;
struct vb2_buffer {int state; int prepared; int synced; unsigned int num_planes; TYPE_1__* planes; struct vb2_queue* vb2_queue; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_2__ {int mem_priv; } ;


 int EINVAL ;
 int EIO ;
 int VB2_BUF_STATE_PREPARING ;



 int WARN (int,char*) ;
 int WARN_ON (int) ;
 int __prepare_dmabuf (struct vb2_buffer*) ;
 int __prepare_mmap (struct vb2_buffer*) ;
 int __prepare_userptr (struct vb2_buffer*) ;
 int buf_out_validate ;
 int call_vb_qop (struct vb2_buffer*,int ,struct vb2_buffer*) ;
 int call_void_memop (struct vb2_buffer*,int ,int ) ;
 int dprintk (int,char*,...) ;
 int prepare ;

__attribute__((used)) static int __buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *q = vb->vb2_queue;
 enum vb2_buffer_state orig_state = vb->state;
 unsigned int plane;
 int ret;

 if (q->error) {
  dprintk(1, "fatal error occurred on queue\n");
  return -EIO;
 }

 if (vb->prepared)
  return 0;
 WARN_ON(vb->synced);

 if (q->is_output) {
  ret = call_vb_qop(vb, buf_out_validate, vb);
  if (ret) {
   dprintk(1, "buffer validation failed\n");
   return ret;
  }
 }

 vb->state = VB2_BUF_STATE_PREPARING;

 switch (q->memory) {
 case 129:
  ret = __prepare_mmap(vb);
  break;
 case 128:
  ret = __prepare_userptr(vb);
  break;
 case 130:
  ret = __prepare_dmabuf(vb);
  break;
 default:
  WARN(1, "Invalid queue type\n");
  ret = -EINVAL;
  break;
 }

 if (ret) {
  dprintk(1, "buffer preparation failed: %d\n", ret);
  vb->state = orig_state;
  return ret;
 }


 for (plane = 0; plane < vb->num_planes; ++plane)
  call_void_memop(vb, prepare, vb->planes[plane].mem_priv);

 vb->synced = 1;
 vb->prepared = 1;
 vb->state = orig_state;

 return 0;
}
