
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_dma_sg_buf {TYPE_1__* dma_sgt; } ;
struct sg_table {unsigned int orig_nents; struct scatterlist* sgl; } ;
struct vb2_dma_sg_attachment {int dma_dir; struct sg_table sgt; } ;
struct scatterlist {int offset; int length; } ;
struct dma_buf_attachment {struct vb2_dma_sg_attachment* priv; } ;
struct dma_buf {struct vb2_dma_sg_buf* priv; } ;
struct TYPE_2__ {struct scatterlist* sgl; int orig_nents; } ;


 int DMA_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct vb2_dma_sg_attachment*) ;
 struct vb2_dma_sg_attachment* kzalloc (int,int ) ;
 int sg_alloc_table (struct sg_table*,int ,int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,int ,int ) ;

__attribute__((used)) static int vb2_dma_sg_dmabuf_ops_attach(struct dma_buf *dbuf,
 struct dma_buf_attachment *dbuf_attach)
{
 struct vb2_dma_sg_attachment *attach;
 unsigned int i;
 struct scatterlist *rd, *wr;
 struct sg_table *sgt;
 struct vb2_dma_sg_buf *buf = dbuf->priv;
 int ret;

 attach = kzalloc(sizeof(*attach), GFP_KERNEL);
 if (!attach)
  return -ENOMEM;

 sgt = &attach->sgt;



 ret = sg_alloc_table(sgt, buf->dma_sgt->orig_nents, GFP_KERNEL);
 if (ret) {
  kfree(attach);
  return -ENOMEM;
 }

 rd = buf->dma_sgt->sgl;
 wr = sgt->sgl;
 for (i = 0; i < sgt->orig_nents; ++i) {
  sg_set_page(wr, sg_page(rd), rd->length, rd->offset);
  rd = sg_next(rd);
  wr = sg_next(wr);
 }

 attach->dma_dir = DMA_NONE;
 dbuf_attach->priv = attach;

 return 0;
}
