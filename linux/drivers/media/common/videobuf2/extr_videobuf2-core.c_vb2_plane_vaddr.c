
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {unsigned int num_planes; TYPE_1__* planes; } ;
struct TYPE_2__ {int mem_priv; } ;


 void* call_ptr_memop (struct vb2_buffer*,int ,int ) ;
 int vaddr ;

void *vb2_plane_vaddr(struct vb2_buffer *vb, unsigned int plane_no)
{
 if (plane_no >= vb->num_planes || !vb->planes[plane_no].mem_priv)
  return ((void*)0);

 return call_ptr_memop(vb, vaddr, vb->planes[plane_no].mem_priv);

}
