
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_iommu_dev {int iommu; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 struct msm_iommu_dev* find_iommu_for_dev (struct device*) ;
 int iommu_device_link (int *,struct device*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int msm_iommu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int msm_iommu_add_device(struct device *dev)
{
 struct msm_iommu_dev *iommu;
 struct iommu_group *group;
 unsigned long flags;

 spin_lock_irqsave(&msm_iommu_lock, flags);
 iommu = find_iommu_for_dev(dev);
 spin_unlock_irqrestore(&msm_iommu_lock, flags);

 if (iommu)
  iommu_device_link(&iommu->iommu, dev);
 else
  return -ENODEV;

 group = iommu_group_get_for_dev(dev);
 if (IS_ERR(group))
  return PTR_ERR(group);

 iommu_group_put(group);

 return 0;
}
