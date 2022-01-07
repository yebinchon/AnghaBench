
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int gfp_flags; int dma_dir; int dma_attrs; int dev; scalar_t__* alloc_devs; } ;
struct vb2_buffer {int num_planes; TYPE_1__* planes; struct vb2_queue* vb2_queue; } ;
struct TYPE_2__ {unsigned long length; int * mem_priv; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PTR_ERR (void*) ;
 int alloc ;
 void* call_ptr_memop (struct vb2_buffer*,int ,int ,int ,unsigned long,int ,int ) ;
 int call_void_memop (struct vb2_buffer*,int ,int *) ;
 int put ;

__attribute__((used)) static int __vb2_buf_mem_alloc(struct vb2_buffer *vb)
{
 struct vb2_queue *q = vb->vb2_queue;
 void *mem_priv;
 int plane;
 int ret = -ENOMEM;





 for (plane = 0; plane < vb->num_planes; ++plane) {

  unsigned long size = PAGE_ALIGN(vb->planes[plane].length);


  if (size < vb->planes[plane].length)
   goto free;

  mem_priv = call_ptr_memop(vb, alloc,
    q->alloc_devs[plane] ? : q->dev,
    q->dma_attrs, size, q->dma_dir, q->gfp_flags);
  if (IS_ERR_OR_NULL(mem_priv)) {
   if (mem_priv)
    ret = PTR_ERR(mem_priv);
   goto free;
  }


  vb->planes[plane].mem_priv = mem_priv;
 }

 return 0;
free:

 for (; plane > 0; --plane) {
  call_void_memop(vb, put, vb->planes[plane - 1].mem_priv);
  vb->planes[plane - 1].mem_priv = ((void*)0);
 }

 return ret;
}
