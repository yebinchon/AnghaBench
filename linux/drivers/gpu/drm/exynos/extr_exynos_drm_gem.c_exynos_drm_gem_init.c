
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int filp; } ;
struct exynos_drm_gem {unsigned long size; struct drm_gem_object base; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ) ;
 int DRM_DEV_ERROR (int ,char*) ;
 int ENOMEM ;
 struct exynos_drm_gem* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 int drm_gem_object_init (struct drm_device*,struct drm_gem_object*,unsigned long) ;
 int drm_gem_object_release (struct drm_gem_object*) ;
 int kfree (struct exynos_drm_gem*) ;
 struct exynos_drm_gem* kzalloc (int,int ) ;

__attribute__((used)) static struct exynos_drm_gem *exynos_drm_gem_init(struct drm_device *dev,
        unsigned long size)
{
 struct exynos_drm_gem *exynos_gem;
 struct drm_gem_object *obj;
 int ret;

 exynos_gem = kzalloc(sizeof(*exynos_gem), GFP_KERNEL);
 if (!exynos_gem)
  return ERR_PTR(-ENOMEM);

 exynos_gem->size = size;
 obj = &exynos_gem->base;

 ret = drm_gem_object_init(dev, obj, size);
 if (ret < 0) {
  DRM_DEV_ERROR(dev->dev, "failed to initialize gem object\n");
  kfree(exynos_gem);
  return ERR_PTR(ret);
 }

 ret = drm_gem_create_mmap_offset(obj);
 if (ret < 0) {
  drm_gem_object_release(obj);
  kfree(exynos_gem);
  return ERR_PTR(ret);
 }

 DRM_DEV_DEBUG_KMS(dev->dev, "created file object = %pK\n", obj->filp);

 return exynos_gem;
}
