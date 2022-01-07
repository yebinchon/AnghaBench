
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {int iommu; } ;
struct device {int dummy; } ;


 int arm_iommu_detach_device (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 struct ipmmu_vmsa_device* to_ipmmu (struct device*) ;

__attribute__((used)) static void ipmmu_remove_device(struct device *dev)
{
 struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);

 iommu_device_unlink(&mmu->iommu, dev);
 arm_iommu_detach_device(dev);
 iommu_group_remove_device(dev);
}
