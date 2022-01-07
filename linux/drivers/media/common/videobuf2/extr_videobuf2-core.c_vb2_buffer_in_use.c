
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct vb2_buffer {unsigned int num_planes; TYPE_1__* planes; } ;
struct TYPE_2__ {void* mem_priv; } ;


 int call_memop (struct vb2_buffer*,int ,void*) ;
 int num_users ;

bool vb2_buffer_in_use(struct vb2_queue *q, struct vb2_buffer *vb)
{
 unsigned int plane;
 for (plane = 0; plane < vb->num_planes; ++plane) {
  void *mem_priv = vb->planes[plane].mem_priv;






  if (mem_priv && call_memop(vb, num_users, mem_priv) > 1)
   return 1;
 }
 return 0;
}
