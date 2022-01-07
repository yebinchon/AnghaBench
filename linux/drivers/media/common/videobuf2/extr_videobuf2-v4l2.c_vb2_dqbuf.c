
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; int last_buffer_dequeued; int is_output; } ;
struct v4l2_buffer {scalar_t__ type; int flags; } ;


 int EBUSY ;
 int EINVAL ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_LAST ;
 int dprintk (int,char*) ;
 int vb2_core_dqbuf (struct vb2_queue*,int *,struct v4l2_buffer*,int) ;
 scalar_t__ vb2_fileio_is_active (struct vb2_queue*) ;

int vb2_dqbuf(struct vb2_queue *q, struct v4l2_buffer *b, bool nonblocking)
{
 int ret;

 if (vb2_fileio_is_active(q)) {
  dprintk(1, "file io in progress\n");
  return -EBUSY;
 }

 if (b->type != q->type) {
  dprintk(1, "invalid buffer type\n");
  return -EINVAL;
 }

 ret = vb2_core_dqbuf(q, ((void*)0), b, nonblocking);

 if (!q->is_output &&
     b->flags & V4L2_BUF_FLAG_DONE &&
     b->flags & V4L2_BUF_FLAG_LAST)
  q->last_buffer_dequeued = 1;





 b->flags &= ~V4L2_BUF_FLAG_DONE;

 return ret;
}
