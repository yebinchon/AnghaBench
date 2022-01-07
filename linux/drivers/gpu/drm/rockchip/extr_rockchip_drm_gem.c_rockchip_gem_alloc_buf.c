
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {struct drm_device* dev; } ;
struct rockchip_gem_object {struct drm_gem_object base; } ;
struct rockchip_drm_private {scalar_t__ domain; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;


 int rockchip_gem_alloc_dma (struct rockchip_gem_object*,int) ;
 int rockchip_gem_alloc_iommu (struct rockchip_gem_object*,int) ;

__attribute__((used)) static int rockchip_gem_alloc_buf(struct rockchip_gem_object *rk_obj,
      bool alloc_kmap)
{
 struct drm_gem_object *obj = &rk_obj->base;
 struct drm_device *drm = obj->dev;
 struct rockchip_drm_private *private = drm->dev_private;

 if (private->domain)
  return rockchip_gem_alloc_iommu(rk_obj, alloc_kmap);
 else
  return rockchip_gem_alloc_dma(rk_obj, alloc_kmap);
}
