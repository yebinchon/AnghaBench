
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int flags; scalar_t__ request_fd; int sequence; int timecode; int field; } ;
struct vb2_queue {scalar_t__ memory; int timestamp_flags; int copy_timestamp; scalar_t__ is_multiplanar; } ;
struct TYPE_6__ {int fd; int userptr; int offset; } ;
struct vb2_plane {unsigned int length; TYPE_3__ m; scalar_t__ bytesused; int data_offset; } ;
struct vb2_buffer {unsigned int num_planes; int state; scalar_t__ prepared; scalar_t__ synced; struct vb2_plane* planes; int timestamp; int memory; int type; int index; struct vb2_queue* vb2_queue; } ;
struct TYPE_4__ {int fd; int userptr; int mem_offset; } ;
struct v4l2_plane {unsigned int length; int reserved; int data_offset; TYPE_1__ m; scalar_t__ bytesused; } ;
struct TYPE_5__ {int fd; int userptr; int offset; struct v4l2_plane* planes; } ;
struct v4l2_buffer {int flags; scalar_t__ request_fd; unsigned int length; TYPE_2__ m; scalar_t__ bytesused; scalar_t__ reserved2; int sequence; int timecode; int timestamp; int field; int memory; int type; int index; } ;


 int V4L2_BUFFER_MASK_FLAGS ;
 int V4L2_BUF_FLAG_DONE ;
 int V4L2_BUF_FLAG_ERROR ;
 int V4L2_BUF_FLAG_IN_REQUEST ;
 int V4L2_BUF_FLAG_MAPPED ;
 int V4L2_BUF_FLAG_PREPARED ;
 int V4L2_BUF_FLAG_QUEUED ;
 int V4L2_BUF_FLAG_REQUEST_FD ;
 int V4L2_BUF_FLAG_TIMESTAMP_MASK ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;







 scalar_t__ VB2_MEMORY_DMABUF ;
 scalar_t__ VB2_MEMORY_MMAP ;
 scalar_t__ VB2_MEMORY_USERPTR ;
 int memset (int ,int ,int) ;
 int ns_to_timeval (int ) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 scalar_t__ vb2_buffer_in_use (struct vb2_queue*,struct vb2_buffer*) ;

__attribute__((used)) static void __fill_v4l2_buffer(struct vb2_buffer *vb, void *pb)
{
 struct v4l2_buffer *b = pb;
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vb2_queue *q = vb->vb2_queue;
 unsigned int plane;


 b->index = vb->index;
 b->type = vb->type;
 b->memory = vb->memory;
 b->bytesused = 0;

 b->flags = vbuf->flags;
 b->field = vbuf->field;
 b->timestamp = ns_to_timeval(vb->timestamp);
 b->timecode = vbuf->timecode;
 b->sequence = vbuf->sequence;
 b->reserved2 = 0;
 b->request_fd = 0;

 if (q->is_multiplanar) {




  b->length = vb->num_planes;
  for (plane = 0; plane < vb->num_planes; ++plane) {
   struct v4l2_plane *pdst = &b->m.planes[plane];
   struct vb2_plane *psrc = &vb->planes[plane];

   pdst->bytesused = psrc->bytesused;
   pdst->length = psrc->length;
   if (q->memory == VB2_MEMORY_MMAP)
    pdst->m.mem_offset = psrc->m.offset;
   else if (q->memory == VB2_MEMORY_USERPTR)
    pdst->m.userptr = psrc->m.userptr;
   else if (q->memory == VB2_MEMORY_DMABUF)
    pdst->m.fd = psrc->m.fd;
   pdst->data_offset = psrc->data_offset;
   memset(pdst->reserved, 0, sizeof(pdst->reserved));
  }
 } else {




  b->length = vb->planes[0].length;
  b->bytesused = vb->planes[0].bytesused;
  if (q->memory == VB2_MEMORY_MMAP)
   b->m.offset = vb->planes[0].m.offset;
  else if (q->memory == VB2_MEMORY_USERPTR)
   b->m.userptr = vb->planes[0].m.userptr;
  else if (q->memory == VB2_MEMORY_DMABUF)
   b->m.fd = vb->planes[0].m.fd;
 }




 b->flags &= ~V4L2_BUFFER_MASK_FLAGS;
 b->flags |= q->timestamp_flags & V4L2_BUF_FLAG_TIMESTAMP_MASK;
 if (!q->copy_timestamp) {




  b->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
  b->flags |= q->timestamp_flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 }

 switch (vb->state) {
 case 128:
 case 134:
  b->flags |= V4L2_BUF_FLAG_QUEUED;
  break;
 case 130:
  b->flags |= V4L2_BUF_FLAG_IN_REQUEST;
  break;
 case 131:
  b->flags |= V4L2_BUF_FLAG_ERROR;

 case 132:
  b->flags |= V4L2_BUF_FLAG_DONE;
  break;
 case 129:
 case 133:

  break;
 }

 if ((vb->state == 133 ||
      vb->state == 130) &&
     vb->synced && vb->prepared)
  b->flags |= V4L2_BUF_FLAG_PREPARED;

 if (vb2_buffer_in_use(q, vb))
  b->flags |= V4L2_BUF_FLAG_MAPPED;
 if (vbuf->request_fd >= 0) {
  b->flags |= V4L2_BUF_FLAG_REQUEST_FD;
  b->request_fd = vbuf->request_fd;
 }
}
