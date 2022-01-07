
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dev; } ;
struct drm_file {int dummy; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,unsigned int) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,unsigned int*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int to_dma_dev (int ) ;

__attribute__((used)) static int exynos_drm_gem_handle_create(struct drm_gem_object *obj,
     struct drm_file *file_priv,
     unsigned int *handle)
{
 int ret;





 ret = drm_gem_handle_create(file_priv, obj, handle);
 if (ret)
  return ret;

 DRM_DEV_DEBUG_KMS(to_dma_dev(obj->dev), "gem handle = 0x%x\n", *handle);


 drm_gem_object_put_unlocked(obj);

 return 0;
}
