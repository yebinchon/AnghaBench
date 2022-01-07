
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_fwspec {struct arm_smmu_master* iommu_priv; int * ops; } ;
struct device {int dummy; } ;
struct arm_smmu_master {struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int iommu; } ;


 int arm_smmu_detach_dev (struct arm_smmu_master*) ;
 int arm_smmu_ops ;
 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_fwspec_free (struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int kfree (struct arm_smmu_master*) ;

__attribute__((used)) static void arm_smmu_remove_device(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 struct arm_smmu_master *master;
 struct arm_smmu_device *smmu;

 if (!fwspec || fwspec->ops != &arm_smmu_ops)
  return;

 master = fwspec->iommu_priv;
 smmu = master->smmu;
 arm_smmu_detach_dev(master);
 iommu_group_remove_device(dev);
 iommu_device_unlink(&smmu->iommu, dev);
 kfree(master);
 iommu_fwspec_free(dev);
}
