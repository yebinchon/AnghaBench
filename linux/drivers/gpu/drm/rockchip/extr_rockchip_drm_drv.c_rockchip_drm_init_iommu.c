
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rockchip_drm_private {int mm_lock; int mm; TYPE_1__* domain; } ;
struct iommu_domain_geometry {scalar_t__ aperture_end; scalar_t__ aperture_start; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
struct TYPE_2__ {struct iommu_domain_geometry geometry; } ;


 int DRM_DEBUG (char*,scalar_t__,scalar_t__) ;
 int ENOMEM ;
 int drm_mm_init (int *,scalar_t__,scalar_t__) ;
 TYPE_1__* iommu_domain_alloc (int *) ;
 int is_support_iommu ;
 int mutex_init (int *) ;
 int platform_bus_type ;

__attribute__((used)) static int rockchip_drm_init_iommu(struct drm_device *drm_dev)
{
 struct rockchip_drm_private *private = drm_dev->dev_private;
 struct iommu_domain_geometry *geometry;
 u64 start, end;

 if (!is_support_iommu)
  return 0;

 private->domain = iommu_domain_alloc(&platform_bus_type);
 if (!private->domain)
  return -ENOMEM;

 geometry = &private->domain->geometry;
 start = geometry->aperture_start;
 end = geometry->aperture_end;

 DRM_DEBUG("IOMMU context initialized (aperture: %#llx-%#llx)\n",
    start, end);
 drm_mm_init(&private->mm, start, end - start + 1);
 mutex_init(&private->mm_lock);

 return 0;
}
