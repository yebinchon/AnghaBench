
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_vmalloc_buf {int * vaddr; int dbuf; } ;


 int dma_buf_vunmap (int ,int *) ;

__attribute__((used)) static void vb2_vmalloc_unmap_dmabuf(void *mem_priv)
{
 struct vb2_vmalloc_buf *buf = mem_priv;

 dma_buf_vunmap(buf->dbuf, buf->vaddr);
 buf->vaddr = ((void*)0);
}
