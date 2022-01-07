
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int sgl; int nents; } ;
struct rockchip_gem_object {struct sg_table* sgt; int dma_addr; } ;
struct drm_device {int dev; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int DMA_BIDIRECTIONAL ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int dma_map_sg (int ,int ,int ,int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 scalar_t__ rockchip_sg_get_contiguous_size (struct sg_table*,int) ;
 int sg_dma_address (int ) ;

__attribute__((used)) static int
rockchip_gem_dma_map_sg(struct drm_device *drm,
   struct dma_buf_attachment *attach,
   struct sg_table *sg,
   struct rockchip_gem_object *rk_obj)
{
 int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
          DMA_BIDIRECTIONAL);
 if (!count)
  return -EINVAL;

 if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
  DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
  dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
        DMA_BIDIRECTIONAL);
  return -EINVAL;
 }

 rk_obj->dma_addr = sg_dma_address(sg->sgl);
 rk_obj->sgt = sg;
 return 0;
}
