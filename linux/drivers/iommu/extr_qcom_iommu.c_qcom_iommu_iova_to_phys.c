
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_domain {int pgtbl_lock; struct io_pgtable_ops* pgtbl_ops; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {int (* iova_to_phys ) (struct io_pgtable_ops*,int ) ;} ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct io_pgtable_ops*,int ) ;
 struct qcom_iommu_domain* to_qcom_iommu_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t qcom_iommu_iova_to_phys(struct iommu_domain *domain,
        dma_addr_t iova)
{
 phys_addr_t ret;
 unsigned long flags;
 struct qcom_iommu_domain *qcom_domain = to_qcom_iommu_domain(domain);
 struct io_pgtable_ops *ops = qcom_domain->pgtbl_ops;

 if (!ops)
  return 0;

 spin_lock_irqsave(&qcom_domain->pgtbl_lock, flags);
 ret = ops->iova_to_phys(ops, iova);
 spin_unlock_irqrestore(&qcom_domain->pgtbl_lock, flags);

 return ret;
}
