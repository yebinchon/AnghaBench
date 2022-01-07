
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {int iommu; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int CONFIG_ARM ;
 int CONFIG_IOMMU_DMA ;
 int ENODEV ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 int iommu_device_link (int *,struct device*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int ipmmu_init_arm_mapping (struct device*) ;
 struct ipmmu_vmsa_device* to_ipmmu (struct device*) ;

__attribute__((used)) static int ipmmu_add_device(struct device *dev)
{
 struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
 struct iommu_group *group;
 int ret;




 if (!mmu)
  return -ENODEV;

 if (IS_ENABLED(CONFIG_ARM) && !IS_ENABLED(CONFIG_IOMMU_DMA)) {
  ret = ipmmu_init_arm_mapping(dev);
  if (ret)
   return ret;
 } else {
  group = iommu_group_get_for_dev(dev);
  if (IS_ERR(group))
   return PTR_ERR(group);

  iommu_group_put(group);
 }

 iommu_device_link(&mmu->iommu, dev);
 return 0;
}
