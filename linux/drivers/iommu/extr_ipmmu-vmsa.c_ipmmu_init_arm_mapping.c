
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {struct iommu_group* mapping; struct device* dev; } ;
struct iommu_group {int dummy; } ;
typedef struct iommu_group dma_iommu_mapping ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 int SZ_1G ;
 int SZ_2G ;
 int arm_iommu_attach_device (struct device*,struct iommu_group*) ;
 struct iommu_group* arm_iommu_create_mapping (int *,int ,int ) ;
 int arm_iommu_release_mapping (struct iommu_group*) ;
 int dev_err (struct device*,char*) ;
 int iommu_group_add_device (struct iommu_group*,struct device*) ;
 struct iommu_group* iommu_group_alloc () ;
 int iommu_group_put (struct iommu_group*) ;
 int iommu_group_remove_device (struct device*) ;
 int platform_bus_type ;
 struct ipmmu_vmsa_device* to_ipmmu (struct device*) ;

__attribute__((used)) static int ipmmu_init_arm_mapping(struct device *dev)
{
 struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
 struct iommu_group *group;
 int ret;


 group = iommu_group_alloc();
 if (IS_ERR(group)) {
  dev_err(dev, "Failed to allocate IOMMU group\n");
  return PTR_ERR(group);
 }

 ret = iommu_group_add_device(group, dev);
 iommu_group_put(group);

 if (ret < 0) {
  dev_err(dev, "Failed to add device to IPMMU group\n");
  return ret;
 }
 if (!mmu->mapping) {
  struct dma_iommu_mapping *mapping;

  mapping = arm_iommu_create_mapping(&platform_bus_type,
         SZ_1G, SZ_2G);
  if (IS_ERR(mapping)) {
   dev_err(mmu->dev, "failed to create ARM IOMMU mapping\n");
   ret = PTR_ERR(mapping);
   goto error;
  }

  mmu->mapping = mapping;
 }


 ret = arm_iommu_attach_device(dev, mmu->mapping);
 if (ret < 0) {
  dev_err(dev, "Failed to attach device to VA mapping\n");
  goto error;
 }

 return 0;

error:
 iommu_group_remove_device(dev);
 if (mmu->mapping)
  arm_iommu_release_mapping(mmu->mapping);

 return ret;
}
