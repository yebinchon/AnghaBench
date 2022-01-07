
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {scalar_t__ is_a2xx; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;


 scalar_t__ iommu_present (int *) ;
 int platform_bus_type ;

bool msm_use_mmu(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;


 return priv->is_a2xx || iommu_present(&platform_bus_type);
}
