
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dma_sg_buf {void* vaddr; } ;
struct dma_buf {struct vb2_dma_sg_buf* priv; } ;


 unsigned long PAGE_SIZE ;

__attribute__((used)) static void *vb2_dma_sg_dmabuf_ops_kmap(struct dma_buf *dbuf, unsigned long pgnum)
{
 struct vb2_dma_sg_buf *buf = dbuf->priv;

 return buf->vaddr ? buf->vaddr + pgnum * PAGE_SIZE : ((void*)0);
}
