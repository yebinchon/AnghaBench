
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_iommu {int group; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 struct iommu_group* iommu_group_ref_get (int ) ;
 struct rk_iommu* rk_iommu_from_dev (struct device*) ;

__attribute__((used)) static struct iommu_group *rk_iommu_device_group(struct device *dev)
{
 struct rk_iommu *iommu;

 iommu = rk_iommu_from_dev(dev);

 return iommu_group_ref_get(iommu->group);
}
