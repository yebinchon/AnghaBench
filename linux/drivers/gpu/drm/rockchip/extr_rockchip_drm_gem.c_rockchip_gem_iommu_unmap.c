
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct rockchip_gem_object {int mm; int size; int dma_addr; TYPE_1__ base; } ;
struct rockchip_drm_private {int mm_lock; int domain; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;


 int drm_mm_remove_node (int *) ;
 int iommu_unmap (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rockchip_gem_iommu_unmap(struct rockchip_gem_object *rk_obj)
{
 struct drm_device *drm = rk_obj->base.dev;
 struct rockchip_drm_private *private = drm->dev_private;

 iommu_unmap(private->domain, rk_obj->dma_addr, rk_obj->size);

 mutex_lock(&private->mm_lock);

 drm_mm_remove_node(&rk_obj->mm);

 mutex_unlock(&private->mm_lock);

 return 0;
}
