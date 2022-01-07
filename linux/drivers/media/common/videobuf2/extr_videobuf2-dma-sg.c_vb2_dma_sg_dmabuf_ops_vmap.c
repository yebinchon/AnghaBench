
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dma_sg_buf {int dummy; } ;
struct dma_buf {struct vb2_dma_sg_buf* priv; } ;


 void* vb2_dma_sg_vaddr (struct vb2_dma_sg_buf*) ;

__attribute__((used)) static void *vb2_dma_sg_dmabuf_ops_vmap(struct dma_buf *dbuf)
{
 struct vb2_dma_sg_buf *buf = dbuf->priv;

 return vb2_dma_sg_vaddr(buf);
}
