
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_private {void* mapping; struct device* dma_dev; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int CONFIG_ARM_DMA_USE_IOMMU ;
 int CONFIG_EXYNOS_IOMMU ;
 int CONFIG_IOMMU_DMA ;
 int DRM_INFO (char*,int ) ;
 int EXYNOS_DEV_ADDR_SIZE ;
 int EXYNOS_DEV_ADDR_START ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* arm_iommu_create_mapping (int *,int ,int ) ;
 int dev_name (struct device*) ;
 int drm_iommu_attach_device (struct drm_device*,struct device*) ;
 void* iommu_get_domain_for_dev (struct device*) ;
 int platform_bus_type ;

int exynos_drm_register_dma(struct drm_device *drm, struct device *dev)
{
 struct exynos_drm_private *priv = drm->dev_private;

 if (!priv->dma_dev) {
  priv->dma_dev = dev;
  DRM_INFO("Exynos DRM: using %s device for DMA mapping operations\n",
    dev_name(dev));
 }

 if (!IS_ENABLED(CONFIG_EXYNOS_IOMMU))
  return 0;

 if (!priv->mapping) {
  void *mapping;

  if (IS_ENABLED(CONFIG_ARM_DMA_USE_IOMMU))
   mapping = arm_iommu_create_mapping(&platform_bus_type,
    EXYNOS_DEV_ADDR_START, EXYNOS_DEV_ADDR_SIZE);
  else if (IS_ENABLED(CONFIG_IOMMU_DMA))
   mapping = iommu_get_domain_for_dev(priv->dma_dev);

  if (IS_ERR(mapping))
   return PTR_ERR(mapping);
  priv->mapping = mapping;
 }

 return drm_iommu_attach_device(drm, dev);
}
