
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_private {int * dma_dev; int * mapping; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;


 int CONFIG_EXYNOS_IOMMU ;
 int IS_ENABLED (int ) ;
 int arm_iommu_release_mapping (int *) ;

void exynos_drm_cleanup_dma(struct drm_device *drm)
{
 struct exynos_drm_private *priv = drm->dev_private;

 if (!IS_ENABLED(CONFIG_EXYNOS_IOMMU))
  return;

 arm_iommu_release_mapping(priv->mapping);
 priv->mapping = ((void*)0);
 priv->dma_dev = ((void*)0);
}
