
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int size; int flags; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_exynos_gem_info {int size; int flags; int handle; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct exynos_drm_gem* to_exynos_gem (struct drm_gem_object*) ;

int exynos_drm_gem_get_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file_priv)
{
 struct exynos_drm_gem *exynos_gem;
 struct drm_exynos_gem_info *args = data;
 struct drm_gem_object *obj;

 obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!obj) {
  DRM_DEV_ERROR(dev->dev, "failed to lookup gem object.\n");
  return -EINVAL;
 }

 exynos_gem = to_exynos_gem(obj);

 args->flags = exynos_gem->flags;
 args->size = exynos_gem->size;

 drm_gem_object_put_unlocked(obj);

 return 0;
}
