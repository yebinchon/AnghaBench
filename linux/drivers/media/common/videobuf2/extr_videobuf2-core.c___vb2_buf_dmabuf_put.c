
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {unsigned int num_planes; int * planes; } ;


 int __vb2_plane_dmabuf_put (struct vb2_buffer*,int *) ;

__attribute__((used)) static void __vb2_buf_dmabuf_put(struct vb2_buffer *vb)
{
 unsigned int plane;

 for (plane = 0; plane < vb->num_planes; ++plane)
  __vb2_plane_dmabuf_put(vb, &vb->planes[plane]);
}
