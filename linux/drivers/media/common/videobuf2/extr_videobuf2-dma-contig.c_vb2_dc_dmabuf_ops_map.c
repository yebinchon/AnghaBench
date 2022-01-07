
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int nents; int orig_nents; int sgl; } ;
struct vb2_dc_attachment {int dma_dir; struct sg_table sgt; } ;
struct mutex {int dummy; } ;
struct dma_buf_attachment {int dev; TYPE_1__* dmabuf; struct vb2_dc_attachment* priv; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct mutex lock; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 scalar_t__ DMA_NONE ;
 int EIO ;
 struct sg_table* ERR_PTR (int ) ;
 int dma_map_sg_attrs (int ,int ,int ,int,int ) ;
 int dma_unmap_sg_attrs (int ,int ,int ,scalar_t__,int ) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct sg_table *vb2_dc_dmabuf_ops_map(
 struct dma_buf_attachment *db_attach, enum dma_data_direction dma_dir)
{
 struct vb2_dc_attachment *attach = db_attach->priv;

 struct mutex *lock = &db_attach->dmabuf->lock;
 struct sg_table *sgt;

 mutex_lock(lock);

 sgt = &attach->sgt;

 if (attach->dma_dir == dma_dir) {
  mutex_unlock(lock);
  return sgt;
 }


 if (attach->dma_dir != DMA_NONE) {
  dma_unmap_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
       attach->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
  attach->dma_dir = DMA_NONE;
 }





 sgt->nents = dma_map_sg_attrs(db_attach->dev, sgt->sgl, sgt->orig_nents,
          dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
 if (!sgt->nents) {
  pr_err("failed to map scatterlist\n");
  mutex_unlock(lock);
  return ERR_PTR(-EIO);
 }

 attach->dma_dir = dma_dir;

 mutex_unlock(lock);

 return sgt;
}
