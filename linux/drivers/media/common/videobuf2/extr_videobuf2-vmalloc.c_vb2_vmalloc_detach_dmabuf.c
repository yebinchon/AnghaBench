
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_vmalloc_buf {scalar_t__ vaddr; int dbuf; } ;


 int dma_buf_vunmap (int ,scalar_t__) ;
 int kfree (struct vb2_vmalloc_buf*) ;

__attribute__((used)) static void vb2_vmalloc_detach_dmabuf(void *mem_priv)
{
 struct vb2_vmalloc_buf *buf = mem_priv;

 if (buf->vaddr)
  dma_buf_vunmap(buf->dbuf, buf->vaddr);

 kfree(buf);
}
