
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {struct iommu_group* group; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int IS_ERR (struct iommu_group*) ;
 struct iommu_group* iommu_group_alloc () ;
 struct iommu_group* iommu_group_ref_get (struct iommu_group*) ;
 struct ipmmu_vmsa_device* to_ipmmu (struct device*) ;

__attribute__((used)) static struct iommu_group *ipmmu_find_group(struct device *dev)
{
 struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
 struct iommu_group *group;

 if (mmu->group)
  return iommu_group_ref_get(mmu->group);

 group = iommu_group_alloc();
 if (!IS_ERR(group))
  mmu->group = group;

 return group;
}
