
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {int iommu; struct device* dev; } ;
struct iommu_group {int dummy; } ;
struct device_link {int dummy; } ;
struct device {int dummy; } ;


 int DL_FLAG_PM_RUNTIME ;
 int ENODEV ;
 scalar_t__ IS_ERR_OR_NULL (struct iommu_group*) ;
 int PTR_ERR_OR_ZERO (struct iommu_group*) ;
 int dev_err (struct device*,char*,int ,int ) ;
 int dev_iommu_fwspec_get (struct device*) ;
 int dev_name (struct device*) ;
 struct device_link* device_link_add (struct device*,struct device*,int ) ;
 int iommu_device_link (int *,struct device*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 struct qcom_iommu_dev* to_iommu (int ) ;

__attribute__((used)) static int qcom_iommu_add_device(struct device *dev)
{
 struct qcom_iommu_dev *qcom_iommu = to_iommu(dev_iommu_fwspec_get(dev));
 struct iommu_group *group;
 struct device_link *link;

 if (!qcom_iommu)
  return -ENODEV;






 link = device_link_add(dev, qcom_iommu->dev, DL_FLAG_PM_RUNTIME);
 if (!link) {
  dev_err(qcom_iommu->dev, "Unable to create device link between %s and %s\n",
   dev_name(qcom_iommu->dev), dev_name(dev));
  return -ENODEV;
 }

 group = iommu_group_get_for_dev(dev);
 if (IS_ERR_OR_NULL(group))
  return PTR_ERR_OR_ZERO(group);

 iommu_group_put(group);
 iommu_device_link(&qcom_iommu->iommu, dev);

 return 0;
}
