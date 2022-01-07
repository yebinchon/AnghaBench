
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_vmalloc_buf {scalar_t__ vaddr; int dbuf; } ;


 int EFAULT ;
 scalar_t__ dma_buf_vmap (int ) ;

__attribute__((used)) static int vb2_vmalloc_map_dmabuf(void *mem_priv)
{
 struct vb2_vmalloc_buf *buf = mem_priv;

 buf->vaddr = dma_buf_vmap(buf->dbuf);

 return buf->vaddr ? 0 : -EFAULT;
}
