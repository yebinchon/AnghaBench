
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int base; } ;
struct drm_file {int dummy; } ;
struct drm_exynos_gem_create {int handle; int size; int flags; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct exynos_drm_gem*) ;
 int PTR_ERR (struct exynos_drm_gem*) ;
 struct exynos_drm_gem* exynos_drm_gem_create (struct drm_device*,int ,int ) ;
 int exynos_drm_gem_destroy (struct exynos_drm_gem*) ;
 int exynos_drm_gem_handle_create (int *,struct drm_file*,int *) ;

int exynos_drm_gem_create_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_exynos_gem_create *args = data;
 struct exynos_drm_gem *exynos_gem;
 int ret;

 exynos_gem = exynos_drm_gem_create(dev, args->flags, args->size);
 if (IS_ERR(exynos_gem))
  return PTR_ERR(exynos_gem);

 ret = exynos_drm_gem_handle_create(&exynos_gem->base, file_priv,
        &args->handle);
 if (ret) {
  exynos_drm_gem_destroy(exynos_gem);
  return ret;
 }

 return 0;
}
