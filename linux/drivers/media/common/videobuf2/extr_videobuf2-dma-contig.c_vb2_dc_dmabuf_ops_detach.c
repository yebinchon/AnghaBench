
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int orig_nents; int sgl; } ;
struct vb2_dc_attachment {scalar_t__ dma_dir; struct sg_table sgt; } ;
struct dma_buf_attachment {struct vb2_dc_attachment* priv; int dev; } ;
struct dma_buf {int dummy; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 scalar_t__ DMA_NONE ;
 int dma_unmap_sg_attrs (int ,int ,int ,scalar_t__,int ) ;
 int kfree (struct vb2_dc_attachment*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void vb2_dc_dmabuf_ops_detach(struct dma_buf *dbuf,
 struct dma_buf_attachment *db_attach)
{
 struct vb2_dc_attachment *attach = db_attach->priv;
 struct sg_table *sgt;

 if (!attach)
  return;

 sgt = &attach->sgt;


 if (attach->dma_dir != DMA_NONE)






  dma_unmap_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
       attach->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
 sg_free_table(sgt);
 kfree(attach);
 db_attach->priv = ((void*)0);
}
