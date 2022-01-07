
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {struct qcom_iommu_ctx** ctxs; } ;
struct qcom_iommu_ctx {int dummy; } ;
struct iommu_fwspec {int dummy; } ;


 struct qcom_iommu_dev* to_iommu (struct iommu_fwspec*) ;

__attribute__((used)) static struct qcom_iommu_ctx * to_ctx(struct iommu_fwspec *fwspec, unsigned asid)
{
 struct qcom_iommu_dev *qcom_iommu = to_iommu(fwspec);
 if (!qcom_iommu)
  return ((void*)0);
 return qcom_iommu->ctxs[asid - 1];
}
