
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct udl_drm_dmabuf_attachment {scalar_t__ dir; struct sg_table sgt; } ;
struct dma_buf_attachment {struct udl_drm_dmabuf_attachment* priv; int dev; TYPE_1__* dmabuf; } ;
struct dma_buf {int dummy; } ;
struct TYPE_2__ {int size; } ;


 scalar_t__ DMA_NONE ;
 int DRM_DEBUG_PRIME (char*,int ,int ) ;
 int dev_name (int ) ;
 int dma_unmap_sg (int ,int ,int ,scalar_t__) ;
 int kfree (struct udl_drm_dmabuf_attachment*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void udl_detach_dma_buf(struct dma_buf *dmabuf,
          struct dma_buf_attachment *attach)
{
 struct udl_drm_dmabuf_attachment *udl_attach = attach->priv;
 struct sg_table *sgt;

 if (!udl_attach)
  return;

 DRM_DEBUG_PRIME("[DEV:%s] size:%zd\n", dev_name(attach->dev),
   attach->dmabuf->size);

 sgt = &udl_attach->sgt;

 if (udl_attach->dir != DMA_NONE)
  dma_unmap_sg(attach->dev, sgt->sgl, sgt->nents,
    udl_attach->dir);

 sg_free_table(sgt);
 kfree(udl_attach);
 attach->priv = ((void*)0);
}
