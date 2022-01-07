
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {TYPE_2__* planes; } ;
struct vb2_plane {int data_offset; int bytesused; int length; int m; } ;
struct vb2_buffer {unsigned int num_planes; TYPE_1__* vb2_queue; scalar_t__ timestamp; } ;
struct TYPE_4__ {int data_offset; int bytesused; int length; int m; } ;
struct TYPE_3__ {scalar_t__ memory; int copy_timestamp; } ;


 scalar_t__ VB2_MEMORY_MMAP ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;

__attribute__((used)) static int __fill_vb2_buffer(struct vb2_buffer *vb, struct vb2_plane *planes)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 unsigned int plane;

 if (!vb->vb2_queue->copy_timestamp)
  vb->timestamp = 0;

 for (plane = 0; plane < vb->num_planes; ++plane) {
  if (vb->vb2_queue->memory != VB2_MEMORY_MMAP) {
   planes[plane].m = vbuf->planes[plane].m;
   planes[plane].length = vbuf->planes[plane].length;
  }
  planes[plane].bytesused = vbuf->planes[plane].bytesused;
  planes[plane].data_offset = vbuf->planes[plane].data_offset;
 }
 return 0;
}
