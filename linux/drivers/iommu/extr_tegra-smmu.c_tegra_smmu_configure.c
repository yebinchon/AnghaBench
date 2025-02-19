
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct iommu_ops* ops; } ;
struct tegra_smmu {TYPE_1__ iommu; } ;
struct of_phandle_args {int dummy; } ;
struct iommu_ops {int (* of_xlate ) (struct device*,struct of_phandle_args*) ;} ;
struct device {TYPE_2__* of_node; } ;
struct TYPE_4__ {int fwnode; } ;


 int dev_err (struct device*,char*,int) ;
 int iommu_fwspec_free (struct device*) ;
 int iommu_fwspec_init (struct device*,int *,struct iommu_ops const*) ;
 int stub1 (struct device*,struct of_phandle_args*) ;

__attribute__((used)) static int tegra_smmu_configure(struct tegra_smmu *smmu, struct device *dev,
    struct of_phandle_args *args)
{
 const struct iommu_ops *ops = smmu->iommu.ops;
 int err;

 err = iommu_fwspec_init(dev, &dev->of_node->fwnode, ops);
 if (err < 0) {
  dev_err(dev, "failed to initialize fwspec: %d\n", err);
  return err;
 }

 err = ops->of_xlate(dev, args);
 if (err < 0) {
  dev_err(dev, "failed to parse SW group ID: %d\n", err);
  iommu_fwspec_free(dev);
  return err;
 }

 return 0;
}
