
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {int iommu; } ;
struct device {int dummy; } ;


 int dev_iommu_fwspec_get (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_fwspec_free (struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 struct qcom_iommu_dev* to_iommu (int ) ;

__attribute__((used)) static void qcom_iommu_remove_device(struct device *dev)
{
 struct qcom_iommu_dev *qcom_iommu = to_iommu(dev_iommu_fwspec_get(dev));

 if (!qcom_iommu)
  return;

 iommu_device_unlink(&qcom_iommu->iommu, dev);
 iommu_group_remove_device(dev);
 iommu_fwspec_free(dev);
}
