
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {scalar_t__ import_attach; int handle_count; int dev; } ;
struct exynos_drm_gem {int sgt; struct drm_gem_object base; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int drm_prime_gem_destroy (struct drm_gem_object*,int ) ;
 int exynos_drm_free_buf (struct exynos_drm_gem*) ;
 int kfree (struct exynos_drm_gem*) ;
 int to_dma_dev (int ) ;

void exynos_drm_gem_destroy(struct exynos_drm_gem *exynos_gem)
{
 struct drm_gem_object *obj = &exynos_gem->base;

 DRM_DEV_DEBUG_KMS(to_dma_dev(obj->dev), "handle count = %d\n",
     obj->handle_count);







 if (obj->import_attach)
  drm_prime_gem_destroy(obj, exynos_gem->sgt);
 else
  exynos_drm_free_buf(exynos_gem);


 drm_gem_object_release(obj);

 kfree(exynos_gem);
}
