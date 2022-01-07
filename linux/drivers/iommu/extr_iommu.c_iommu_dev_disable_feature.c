
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_ops {int (* dev_disable_feat ) (struct device*,int) ;} ;
struct device {TYPE_1__* bus; } ;
typedef enum iommu_dev_features { ____Placeholder_iommu_dev_features } iommu_dev_features ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;


 int EBUSY ;
 int stub1 (struct device*,int) ;

int iommu_dev_disable_feature(struct device *dev, enum iommu_dev_features feat)
{
 const struct iommu_ops *ops = dev->bus->iommu_ops;

 if (ops && ops->dev_disable_feat)
  return ops->dev_disable_feat(dev, feat);

 return -EBUSY;
}
