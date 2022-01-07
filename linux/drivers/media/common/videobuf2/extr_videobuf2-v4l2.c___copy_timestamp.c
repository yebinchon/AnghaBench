
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int flags; int timecode; } ;
struct vb2_queue {scalar_t__ copy_timestamp; scalar_t__ is_output; } ;
struct vb2_buffer {int timestamp; struct vb2_queue* vb2_queue; } ;
struct v4l2_buffer {int flags; int timecode; int timestamp; } ;


 int V4L2_BUF_FLAG_TIMECODE ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_timeval_to_ns (int *) ;

__attribute__((used)) static void __copy_timestamp(struct vb2_buffer *vb, const void *pb)
{
 const struct v4l2_buffer *b = pb;
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vb2_queue *q = vb->vb2_queue;

 if (q->is_output) {




  if (q->copy_timestamp)
   vb->timestamp = v4l2_timeval_to_ns(&b->timestamp);
  vbuf->flags |= b->flags & V4L2_BUF_FLAG_TIMECODE;
  if (b->flags & V4L2_BUF_FLAG_TIMECODE)
   vbuf->timecode = b->timecode;
 }
}
