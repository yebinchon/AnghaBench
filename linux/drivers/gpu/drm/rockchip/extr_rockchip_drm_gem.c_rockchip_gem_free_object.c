
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_gem_object {TYPE_1__* sgt; } ;
struct rockchip_drm_private {scalar_t__ domain; } ;
struct drm_gem_object {scalar_t__ import_attach; struct drm_device* dev; } ;
struct drm_device {int dev; struct rockchip_drm_private* dev_private; } ;
struct TYPE_2__ {int nents; int sgl; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,TYPE_1__*) ;
 int rockchip_gem_free_buf (struct rockchip_gem_object*) ;
 int rockchip_gem_iommu_unmap (struct rockchip_gem_object*) ;
 int rockchip_gem_release_object (struct rockchip_gem_object*) ;
 struct rockchip_gem_object* to_rockchip_obj (struct drm_gem_object*) ;

void rockchip_gem_free_object(struct drm_gem_object *obj)
{
 struct drm_device *drm = obj->dev;
 struct rockchip_drm_private *private = drm->dev_private;
 struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);

 if (obj->import_attach) {
  if (private->domain) {
   rockchip_gem_iommu_unmap(rk_obj);
  } else {
   dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
         rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
  }
  drm_prime_gem_destroy(obj, rk_obj->sgt);
 } else {
  rockchip_gem_free_buf(rk_obj);
 }

 rockchip_gem_release_object(rk_obj);
}
