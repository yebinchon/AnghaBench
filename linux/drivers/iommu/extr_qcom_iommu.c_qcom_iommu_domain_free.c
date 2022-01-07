
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_iommu_domain {TYPE_1__* iommu; int pgtbl_ops; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ WARN_ON (TYPE_1__*) ;
 int free_io_pgtable_ops (int ) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int kfree (struct qcom_iommu_domain*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 struct qcom_iommu_domain* to_qcom_iommu_domain (struct iommu_domain*) ;

__attribute__((used)) static void qcom_iommu_domain_free(struct iommu_domain *domain)
{
 struct qcom_iommu_domain *qcom_domain = to_qcom_iommu_domain(domain);

 if (WARN_ON(qcom_domain->iommu))
  return;

 iommu_put_dma_cookie(domain);






 pm_runtime_get_sync(qcom_domain->iommu->dev);

 free_io_pgtable_ops(qcom_domain->pgtbl_ops);

 pm_runtime_put_sync(qcom_domain->iommu->dev);

 kfree(qcom_domain);
}
