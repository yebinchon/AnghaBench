
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {unsigned int flags; int base; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,unsigned long) ;
 int DRM_WARN (char*) ;
 int EINVAL ;
 struct exynos_drm_gem* ERR_PTR (int) ;
 unsigned int EXYNOS_BO_MASK ;
 unsigned int EXYNOS_BO_NONCONTIG ;
 scalar_t__ IS_ERR (struct exynos_drm_gem*) ;
 int PAGE_SIZE ;
 int drm_gem_object_release (int *) ;
 int exynos_drm_alloc_buf (struct exynos_drm_gem*) ;
 struct exynos_drm_gem* exynos_drm_gem_init (struct drm_device*,unsigned long) ;
 int is_drm_iommu_supported (struct drm_device*) ;
 int kfree (struct exynos_drm_gem*) ;
 unsigned long roundup (unsigned long,int ) ;

struct exynos_drm_gem *exynos_drm_gem_create(struct drm_device *dev,
          unsigned int flags,
          unsigned long size)
{
 struct exynos_drm_gem *exynos_gem;
 int ret;

 if (flags & ~(EXYNOS_BO_MASK)) {
  DRM_DEV_ERROR(dev->dev,
         "invalid GEM buffer flags: %u\n", flags);
  return ERR_PTR(-EINVAL);
 }

 if (!size) {
  DRM_DEV_ERROR(dev->dev, "invalid GEM buffer size: %lu\n", size);
  return ERR_PTR(-EINVAL);
 }

 size = roundup(size, PAGE_SIZE);

 exynos_gem = exynos_drm_gem_init(dev, size);
 if (IS_ERR(exynos_gem))
  return exynos_gem;

 if (!is_drm_iommu_supported(dev) && (flags & EXYNOS_BO_NONCONTIG)) {




  flags &= ~EXYNOS_BO_NONCONTIG;
  DRM_WARN("Non-contiguous allocation is not supported without IOMMU, falling back to contiguous buffer\n");
 }


 exynos_gem->flags = flags;

 ret = exynos_drm_alloc_buf(exynos_gem);
 if (ret < 0) {
  drm_gem_object_release(&exynos_gem->base);
  kfree(exynos_gem);
  return ERR_PTR(ret);
 }

 return exynos_gem;
}
