
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int size; struct drm_device* dev; } ;
struct rockchip_gem_object {int kvaddr; int dma_attrs; int dma_addr; struct drm_gem_object base; } ;
struct drm_device {int dev; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_ATTR_WRITE_COMBINE ;
 int DRM_ERROR (char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_attrs (int ,int ,int *,int ,int ) ;

__attribute__((used)) static int rockchip_gem_alloc_dma(struct rockchip_gem_object *rk_obj,
      bool alloc_kmap)
{
 struct drm_gem_object *obj = &rk_obj->base;
 struct drm_device *drm = obj->dev;

 rk_obj->dma_attrs = DMA_ATTR_WRITE_COMBINE;

 if (!alloc_kmap)
  rk_obj->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;

 rk_obj->kvaddr = dma_alloc_attrs(drm->dev, obj->size,
      &rk_obj->dma_addr, GFP_KERNEL,
      rk_obj->dma_attrs);
 if (!rk_obj->kvaddr) {
  DRM_ERROR("failed to allocate %zu byte dma buffer", obj->size);
  return -ENOMEM;
 }

 return 0;
}
