
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_private {int mapping; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int CONFIG_ARM_DMA_USE_IOMMU ;
 int CONFIG_IOMMU_DMA ;
 scalar_t__ IS_ENABLED (int ) ;
 int arm_iommu_detach_device (struct device*) ;
 int clear_dma_max_seg_size (struct device*) ;
 int iommu_detach_device (int ,struct device*) ;

__attribute__((used)) static void drm_iommu_detach_device(struct drm_device *drm_dev,
    struct device *subdrv_dev)
{
 struct exynos_drm_private *priv = drm_dev->dev_private;

 if (IS_ENABLED(CONFIG_ARM_DMA_USE_IOMMU))
  arm_iommu_detach_device(subdrv_dev);
 else if (IS_ENABLED(CONFIG_IOMMU_DMA))
  iommu_detach_device(priv->mapping, subdrv_dev);

 clear_dma_max_seg_size(subdrv_dev);
}
