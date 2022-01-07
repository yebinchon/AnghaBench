
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_fwspec {struct arm_smmu_master_cfg* iommu_priv; int * ops; } ;
struct device {int dummy; } ;
struct arm_smmu_master_cfg {struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int iommu; } ;


 int arm_smmu_master_free_smes (struct iommu_fwspec*) ;
 int arm_smmu_ops ;
 int arm_smmu_rpm_get (struct arm_smmu_device*) ;
 int arm_smmu_rpm_put (struct arm_smmu_device*) ;
 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_fwspec_free (struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int kfree (struct arm_smmu_master_cfg*) ;

__attribute__((used)) static void arm_smmu_remove_device(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 struct arm_smmu_master_cfg *cfg;
 struct arm_smmu_device *smmu;
 int ret;

 if (!fwspec || fwspec->ops != &arm_smmu_ops)
  return;

 cfg = fwspec->iommu_priv;
 smmu = cfg->smmu;

 ret = arm_smmu_rpm_get(smmu);
 if (ret < 0)
  return;

 iommu_device_unlink(&smmu->iommu, dev);
 arm_smmu_master_free_smes(fwspec);

 arm_smmu_rpm_put(smmu);

 iommu_group_remove_device(dev);
 kfree(fwspec->iommu_priv);
 iommu_fwspec_free(dev);
}
