
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_private {int dma_dev; } ;
struct drm_gem_object {int size; } ;
struct mtk_drm_gem_obj {int dma_addr; scalar_t__ cookie; scalar_t__ kvaddr; int dma_attrs; struct drm_gem_object base; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;


 int DMA_ATTR_NO_KERNEL_MAPPING ;
 int DMA_ATTR_WRITE_COMBINE ;
 int DRM_DEBUG_DRIVER (char*,scalar_t__,int *,size_t) ;
 int DRM_ERROR (char*,int ) ;
 int ENOMEM ;
 struct mtk_drm_gem_obj* ERR_CAST (struct mtk_drm_gem_obj*) ;
 struct mtk_drm_gem_obj* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mtk_drm_gem_obj*) ;
 scalar_t__ dma_alloc_attrs (int ,int ,int *,int ,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int kfree (struct mtk_drm_gem_obj*) ;
 struct mtk_drm_gem_obj* mtk_drm_gem_init (struct drm_device*,size_t) ;

struct mtk_drm_gem_obj *mtk_drm_gem_create(struct drm_device *dev,
        size_t size, bool alloc_kmap)
{
 struct mtk_drm_private *priv = dev->dev_private;
 struct mtk_drm_gem_obj *mtk_gem;
 struct drm_gem_object *obj;
 int ret;

 mtk_gem = mtk_drm_gem_init(dev, size);
 if (IS_ERR(mtk_gem))
  return ERR_CAST(mtk_gem);

 obj = &mtk_gem->base;

 mtk_gem->dma_attrs = DMA_ATTR_WRITE_COMBINE;

 if (!alloc_kmap)
  mtk_gem->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;

 mtk_gem->cookie = dma_alloc_attrs(priv->dma_dev, obj->size,
       &mtk_gem->dma_addr, GFP_KERNEL,
       mtk_gem->dma_attrs);
 if (!mtk_gem->cookie) {
  DRM_ERROR("failed to allocate %zx byte dma buffer", obj->size);
  ret = -ENOMEM;
  goto err_gem_free;
 }

 if (alloc_kmap)
  mtk_gem->kvaddr = mtk_gem->cookie;

 DRM_DEBUG_DRIVER("cookie = %p dma_addr = %pad size = %zu\n",
    mtk_gem->cookie, &mtk_gem->dma_addr,
    size);

 return mtk_gem;

err_gem_free:
 drm_gem_object_release(obj);
 kfree(mtk_gem);
 return ERR_PTR(ret);
}
