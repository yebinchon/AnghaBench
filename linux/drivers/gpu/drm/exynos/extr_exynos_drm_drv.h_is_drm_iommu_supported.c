
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_private {scalar_t__ mapping; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;



__attribute__((used)) static inline bool is_drm_iommu_supported(struct drm_device *drm_dev)
{
 struct exynos_drm_private *priv = drm_dev->dev_private;

 return priv->mapping ? 1 : 0;
}
