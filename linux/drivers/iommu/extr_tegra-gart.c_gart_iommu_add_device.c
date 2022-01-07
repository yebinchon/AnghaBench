
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_group {int dummy; } ;
struct device {int iommu_fwspec; } ;
struct TYPE_2__ {int iommu; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 TYPE_1__* gart_handle ;
 int iommu_device_link (int *,struct device*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;

__attribute__((used)) static int gart_iommu_add_device(struct device *dev)
{
 struct iommu_group *group;

 if (!dev->iommu_fwspec)
  return -ENODEV;

 group = iommu_group_get_for_dev(dev);
 if (IS_ERR(group))
  return PTR_ERR(group);

 iommu_group_put(group);

 iommu_device_link(&gart_handle->iommu, dev);

 return 0;
}
