
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct dma_buf_attachment {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int dma_unmap_sg_attrs (int ,int ,int ,int,int ) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;

void drm_gem_unmap_dma_buf(struct dma_buf_attachment *attach,
      struct sg_table *sgt,
      enum dma_data_direction dir)
{
 if (!sgt)
  return;

 dma_unmap_sg_attrs(attach->dev, sgt->sgl, sgt->nents, dir,
      DMA_ATTR_SKIP_CPU_SYNC);
 sg_free_table(sgt);
 kfree(sgt);
}
