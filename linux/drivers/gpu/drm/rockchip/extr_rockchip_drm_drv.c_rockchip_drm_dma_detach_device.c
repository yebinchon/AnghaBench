
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_drm_private {struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int iommu_detach_device (struct iommu_domain*,struct device*) ;
 int is_support_iommu ;

void rockchip_drm_dma_detach_device(struct drm_device *drm_dev,
        struct device *dev)
{
 struct rockchip_drm_private *private = drm_dev->dev_private;
 struct iommu_domain *domain = private->domain;

 if (!is_support_iommu)
  return;

 iommu_detach_device(domain, dev);
}
