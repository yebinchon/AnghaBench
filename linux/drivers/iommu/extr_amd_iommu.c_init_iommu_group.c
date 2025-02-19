
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct iommu_group*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;

__attribute__((used)) static void init_iommu_group(struct device *dev)
{
 struct iommu_group *group;

 group = iommu_group_get_for_dev(dev);
 if (IS_ERR(group))
  return;

 iommu_group_put(group);
}
