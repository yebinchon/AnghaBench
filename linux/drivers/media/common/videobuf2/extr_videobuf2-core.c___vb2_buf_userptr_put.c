
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {unsigned int num_planes; TYPE_1__* planes; } ;
struct TYPE_2__ {int * mem_priv; } ;


 int call_void_memop (struct vb2_buffer*,int ,int *) ;
 int put_userptr ;

__attribute__((used)) static void __vb2_buf_userptr_put(struct vb2_buffer *vb)
{
 unsigned int plane;

 for (plane = 0; plane < vb->num_planes; ++plane) {
  if (vb->planes[plane].mem_priv)
   call_void_memop(vb, put_userptr, vb->planes[plane].mem_priv);
  vb->planes[plane].mem_priv = ((void*)0);
 }
}
