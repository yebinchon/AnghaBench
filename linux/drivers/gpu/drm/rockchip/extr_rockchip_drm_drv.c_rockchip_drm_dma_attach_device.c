
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_drm_private {int domain; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int iommu_attach_device (int ,struct device*) ;
 int is_support_iommu ;

int rockchip_drm_dma_attach_device(struct drm_device *drm_dev,
       struct device *dev)
{
 struct rockchip_drm_private *private = drm_dev->dev_private;
 int ret;

 if (!is_support_iommu)
  return 0;

 ret = iommu_attach_device(private->domain, dev);
 if (ret) {
  DRM_DEV_ERROR(dev, "Failed to attach iommu device\n");
  return ret;
 }

 return 0;
}
