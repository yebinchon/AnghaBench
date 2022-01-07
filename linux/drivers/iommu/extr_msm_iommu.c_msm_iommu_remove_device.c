
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_iommu_dev {int iommu; } ;
struct device {int dummy; } ;


 struct msm_iommu_dev* find_iommu_for_dev (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int msm_iommu_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void msm_iommu_remove_device(struct device *dev)
{
 struct msm_iommu_dev *iommu;
 unsigned long flags;

 spin_lock_irqsave(&msm_iommu_lock, flags);
 iommu = find_iommu_for_dev(dev);
 spin_unlock_irqrestore(&msm_iommu_lock, flags);

 if (iommu)
  iommu_device_unlink(&iommu->iommu, dev);

 iommu_group_remove_device(dev);
}
