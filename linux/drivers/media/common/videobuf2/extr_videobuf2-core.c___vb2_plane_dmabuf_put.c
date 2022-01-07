
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_plane {scalar_t__ dbuf_mapped; int * dbuf; int * mem_priv; } ;
struct vb2_buffer {int dummy; } ;


 int call_void_memop (struct vb2_buffer*,int ,int *) ;
 int detach_dmabuf ;
 int dma_buf_put (int *) ;
 int unmap_dmabuf ;

__attribute__((used)) static void __vb2_plane_dmabuf_put(struct vb2_buffer *vb, struct vb2_plane *p)
{
 if (!p->mem_priv)
  return;

 if (p->dbuf_mapped)
  call_void_memop(vb, unmap_dmabuf, p->mem_priv);

 call_void_memop(vb, detach_dmabuf, p->mem_priv);
 dma_buf_put(p->dbuf);
 p->mem_priv = ((void*)0);
 p->dbuf = ((void*)0);
 p->dbuf_mapped = 0;
}
