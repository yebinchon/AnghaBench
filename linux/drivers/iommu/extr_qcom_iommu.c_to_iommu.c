
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {int dummy; } ;
struct iommu_fwspec {struct qcom_iommu_dev* iommu_priv; int * ops; } ;


 int qcom_iommu_ops ;

__attribute__((used)) static struct qcom_iommu_dev * to_iommu(struct iommu_fwspec *fwspec)
{
 if (!fwspec || fwspec->ops != &qcom_iommu_ops)
  return ((void*)0);
 return fwspec->iommu_priv;
}
