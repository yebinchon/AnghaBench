
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {unsigned int num_planes; int index; TYPE_1__* planes; } ;
struct TYPE_2__ {int * mem_priv; } ;


 int call_void_memop (struct vb2_buffer*,int ,int *) ;
 int dprintk (int,char*,unsigned int,int ) ;
 int put ;

__attribute__((used)) static void __vb2_buf_mem_free(struct vb2_buffer *vb)
{
 unsigned int plane;

 for (plane = 0; plane < vb->num_planes; ++plane) {
  call_void_memop(vb, put, vb->planes[plane].mem_priv);
  vb->planes[plane].mem_priv = ((void*)0);
  dprintk(3, "freed plane %d of buffer %d\n", plane, vb->index);
 }
}
