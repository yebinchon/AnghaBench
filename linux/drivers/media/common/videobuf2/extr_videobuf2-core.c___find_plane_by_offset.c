
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {unsigned int num_buffers; struct vb2_buffer** bufs; } ;
struct vb2_buffer {unsigned int num_planes; TYPE_2__* planes; } ;
struct TYPE_3__ {unsigned long offset; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EINVAL ;

__attribute__((used)) static int __find_plane_by_offset(struct vb2_queue *q, unsigned long off,
   unsigned int *_buffer, unsigned int *_plane)
{
 struct vb2_buffer *vb;
 unsigned int buffer, plane;






 for (buffer = 0; buffer < q->num_buffers; ++buffer) {
  vb = q->bufs[buffer];

  for (plane = 0; plane < vb->num_planes; ++plane) {
   if (vb->planes[plane].m.offset == off) {
    *_buffer = buffer;
    *_plane = plane;
    return 0;
   }
  }
 }

 return -EINVAL;
}
