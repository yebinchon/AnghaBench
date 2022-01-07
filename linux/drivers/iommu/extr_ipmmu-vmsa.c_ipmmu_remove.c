
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ipmmu_vmsa_device {int mapping; int iommu; } ;


 int arm_iommu_release_mapping (int ) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 int ipmmu_device_reset (struct ipmmu_vmsa_device*) ;
 struct ipmmu_vmsa_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ipmmu_remove(struct platform_device *pdev)
{
 struct ipmmu_vmsa_device *mmu = platform_get_drvdata(pdev);

 iommu_device_sysfs_remove(&mmu->iommu);
 iommu_device_unregister(&mmu->iommu);

 arm_iommu_release_mapping(mmu->mapping);

 ipmmu_device_reset(mmu);

 return 0;
}
