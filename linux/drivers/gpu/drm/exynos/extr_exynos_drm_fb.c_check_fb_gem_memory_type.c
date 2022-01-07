
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {unsigned int flags; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 scalar_t__ IS_NONCONTIG_BUFFER (unsigned int) ;
 scalar_t__ is_drm_iommu_supported (struct drm_device*) ;

__attribute__((used)) static int check_fb_gem_memory_type(struct drm_device *drm_dev,
        struct exynos_drm_gem *exynos_gem)
{
 unsigned int flags;





 if (is_drm_iommu_supported(drm_dev))
  return 0;

 flags = exynos_gem->flags;





 if (IS_NONCONTIG_BUFFER(flags)) {
  DRM_DEV_ERROR(drm_dev->dev,
         "Non-contiguous GEM memory is not supported.\n");
  return -EINVAL;
 }

 return 0;
}
