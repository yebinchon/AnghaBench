
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int CONFIG_EXYNOS_IOMMU ;
 scalar_t__ IS_ENABLED (int ) ;
 int drm_iommu_detach_device (struct drm_device*,struct device*) ;

void exynos_drm_unregister_dma(struct drm_device *drm, struct device *dev)
{
 if (IS_ENABLED(CONFIG_EXYNOS_IOMMU))
  drm_iommu_detach_device(drm, dev);
}
