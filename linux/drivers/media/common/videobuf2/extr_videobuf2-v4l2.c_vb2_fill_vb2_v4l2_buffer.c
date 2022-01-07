
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_v4l2_buffer {int request_fd; int flags; scalar_t__ field; scalar_t__ sequence; struct vb2_plane* planes; } ;
struct vb2_queue {int copy_timestamp; scalar_t__ allow_zero_bytesused; scalar_t__ is_output; } ;
struct TYPE_8__ {int offset; int fd; int userptr; } ;
struct vb2_plane {scalar_t__ length; scalar_t__ bytesused; scalar_t__ data_offset; TYPE_3__ m; } ;
struct vb2_buffer {unsigned int num_planes; struct vb2_queue* vb2_queue; TYPE_5__* planes; } ;
struct TYPE_6__ {int fd; int userptr; } ;
struct v4l2_plane {scalar_t__ length; scalar_t__ bytesused; scalar_t__ data_offset; TYPE_1__ m; } ;
struct TYPE_7__ {int fd; int userptr; struct v4l2_plane* planes; } ;
struct v4l2_buffer {scalar_t__ field; int memory; scalar_t__ length; scalar_t__ bytesused; int flags; int type; TYPE_2__ m; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_10__ {scalar_t__ length; TYPE_4__ m; } ;


 int EINVAL ;
 int V4L2_BUFFER_MASK_FLAGS ;
 int V4L2_BUFFER_OUT_FLAGS ;
 int V4L2_BUF_FLAG_LAST ;
 int V4L2_BUF_FLAG_TIMECODE ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;


 int __verify_length (struct vb2_buffer*,struct v4l2_buffer*) ;
 int dprintk (int,char*,...) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int vb2_warn_zero_bytesused (struct vb2_buffer*) ;

__attribute__((used)) static int vb2_fill_vb2_v4l2_buffer(struct vb2_buffer *vb, struct v4l2_buffer *b)
{
 struct vb2_queue *q = vb->vb2_queue;
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vb2_plane *planes = vbuf->planes;
 unsigned int plane;
 int ret;

 ret = __verify_length(vb, b);
 if (ret < 0) {
  dprintk(1, "plane parameters verification failed: %d\n", ret);
  return ret;
 }
 if (b->field == V4L2_FIELD_ALTERNATE && q->is_output) {
  dprintk(1, "the field is incorrectly set to ALTERNATE for an output buffer\n");
  return -EINVAL;
 }
 vbuf->sequence = 0;
 vbuf->request_fd = -1;

 if (V4L2_TYPE_IS_MULTIPLANAR(b->type)) {
  switch (b->memory) {
  case 128:
   for (plane = 0; plane < vb->num_planes; ++plane) {
    planes[plane].m.userptr =
     b->m.planes[plane].m.userptr;
    planes[plane].length =
     b->m.planes[plane].length;
   }
   break;
  case 129:
   for (plane = 0; plane < vb->num_planes; ++plane) {
    planes[plane].m.fd =
     b->m.planes[plane].m.fd;
    planes[plane].length =
     b->m.planes[plane].length;
   }
   break;
  default:
   for (plane = 0; plane < vb->num_planes; ++plane) {
    planes[plane].m.offset =
     vb->planes[plane].m.offset;
    planes[plane].length =
     vb->planes[plane].length;
   }
   break;
  }


  if (V4L2_TYPE_IS_OUTPUT(b->type)) {
   for (plane = 0; plane < vb->num_planes; ++plane) {
    struct vb2_plane *pdst = &planes[plane];
    struct v4l2_plane *psrc = &b->m.planes[plane];

    if (psrc->bytesused == 0)
     vb2_warn_zero_bytesused(vb);

    if (vb->vb2_queue->allow_zero_bytesused)
     pdst->bytesused = psrc->bytesused;
    else
     pdst->bytesused = psrc->bytesused ?
      psrc->bytesused : pdst->length;
    pdst->data_offset = psrc->data_offset;
   }
  }
 } else {
  switch (b->memory) {
  case 128:
   planes[0].m.userptr = b->m.userptr;
   planes[0].length = b->length;
   break;
  case 129:
   planes[0].m.fd = b->m.fd;
   planes[0].length = b->length;
   break;
  default:
   planes[0].m.offset = vb->planes[0].m.offset;
   planes[0].length = vb->planes[0].length;
   break;
  }

  planes[0].data_offset = 0;
  if (V4L2_TYPE_IS_OUTPUT(b->type)) {
   if (b->bytesused == 0)
    vb2_warn_zero_bytesused(vb);

   if (vb->vb2_queue->allow_zero_bytesused)
    planes[0].bytesused = b->bytesused;
   else
    planes[0].bytesused = b->bytesused ?
     b->bytesused : planes[0].length;
  } else
   planes[0].bytesused = 0;

 }


 vbuf->flags = b->flags & ~V4L2_BUFFER_MASK_FLAGS;
 if (!vb->vb2_queue->copy_timestamp || !V4L2_TYPE_IS_OUTPUT(b->type)) {





  vbuf->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 }

 if (V4L2_TYPE_IS_OUTPUT(b->type)) {






  vbuf->flags &= ~V4L2_BUF_FLAG_TIMECODE;
  vbuf->field = b->field;
 } else {

  vbuf->flags &= ~V4L2_BUFFER_OUT_FLAGS;

  vbuf->flags &= ~V4L2_BUF_FLAG_LAST;
 }

 return 0;
}
