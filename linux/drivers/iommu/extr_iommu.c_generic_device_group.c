
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 struct iommu_group* iommu_group_alloc () ;

struct iommu_group *generic_device_group(struct device *dev)
{
 return iommu_group_alloc();
}
