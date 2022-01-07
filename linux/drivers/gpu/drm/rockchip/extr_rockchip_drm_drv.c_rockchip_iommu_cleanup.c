
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_drm_private {int domain; int mm; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;


 int drm_mm_takedown (int *) ;
 int iommu_domain_free (int ) ;
 int is_support_iommu ;

__attribute__((used)) static void rockchip_iommu_cleanup(struct drm_device *drm_dev)
{
 struct rockchip_drm_private *private = drm_dev->dev_private;

 if (!is_support_iommu)
  return;

 drm_mm_takedown(&private->mm);
 iommu_domain_free(private->domain);
}
