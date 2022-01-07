
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {int base; } ;
struct drm_mode_create_dumb {int pitch; int width; int bpp; int size; int height; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dev; } ;


 unsigned int EXYNOS_BO_CONTIG ;
 unsigned int EXYNOS_BO_NONCONTIG ;
 unsigned int EXYNOS_BO_WC ;
 scalar_t__ IS_ERR (struct exynos_drm_gem*) ;
 int PTR_ERR (struct exynos_drm_gem*) ;
 int dev_warn (int ,char*) ;
 struct exynos_drm_gem* exynos_drm_gem_create (struct drm_device*,unsigned int,int) ;
 int exynos_drm_gem_destroy (struct exynos_drm_gem*) ;
 int exynos_drm_gem_handle_create (int *,struct drm_file*,int *) ;
 scalar_t__ is_drm_iommu_supported (struct drm_device*) ;

int exynos_drm_gem_dumb_create(struct drm_file *file_priv,
          struct drm_device *dev,
          struct drm_mode_create_dumb *args)
{
 struct exynos_drm_gem *exynos_gem;
 unsigned int flags;
 int ret;







 args->pitch = args->width * ((args->bpp + 7) / 8);
 args->size = args->pitch * args->height;

 if (is_drm_iommu_supported(dev))
  flags = EXYNOS_BO_NONCONTIG | EXYNOS_BO_WC;
 else
  flags = EXYNOS_BO_CONTIG | EXYNOS_BO_WC;

 exynos_gem = exynos_drm_gem_create(dev, flags, args->size);
 if (IS_ERR(exynos_gem)) {
  dev_warn(dev->dev, "FB allocation failed.\n");
  return PTR_ERR(exynos_gem);
 }

 ret = exynos_drm_gem_handle_create(&exynos_gem->base, file_priv,
        &args->handle);
 if (ret) {
  exynos_drm_gem_destroy(exynos_gem);
  return ret;
 }

 return 0;
}
