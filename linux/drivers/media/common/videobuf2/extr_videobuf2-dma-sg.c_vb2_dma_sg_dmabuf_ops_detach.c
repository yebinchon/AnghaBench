
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int orig_nents; int sgl; } ;
struct vb2_dma_sg_attachment {scalar_t__ dma_dir; struct sg_table sgt; } ;
struct dma_buf_attachment {struct vb2_dma_sg_attachment* priv; int dev; } ;
struct dma_buf {int dummy; } ;


 scalar_t__ DMA_NONE ;
 int dma_unmap_sg (int ,int ,int ,scalar_t__) ;
 int kfree (struct vb2_dma_sg_attachment*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void vb2_dma_sg_dmabuf_ops_detach(struct dma_buf *dbuf,
 struct dma_buf_attachment *db_attach)
{
 struct vb2_dma_sg_attachment *attach = db_attach->priv;
 struct sg_table *sgt;

 if (!attach)
  return;

 sgt = &attach->sgt;


 if (attach->dma_dir != DMA_NONE)
  dma_unmap_sg(db_attach->dev, sgt->sgl, sgt->orig_nents,
   attach->dma_dir);
 sg_free_table(sgt);
 kfree(attach);
 db_attach->priv = ((void*)0);
}
