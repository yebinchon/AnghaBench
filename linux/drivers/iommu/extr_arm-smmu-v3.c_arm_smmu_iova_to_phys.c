
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {scalar_t__ type; } ;
struct io_pgtable_ops {int (* iova_to_phys ) (struct io_pgtable_ops*,int ) ;} ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct io_pgtable_ops* pgtbl_ops; } ;


 scalar_t__ IOMMU_DOMAIN_IDENTITY ;
 int stub1 (struct io_pgtable_ops*,int ) ;
 TYPE_1__* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t
arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
{
 struct io_pgtable_ops *ops = to_smmu_domain(domain)->pgtbl_ops;

 if (domain->type == IOMMU_DOMAIN_IDENTITY)
  return iova;

 if (!ops)
  return 0;

 return ops->iova_to_phys(ops, iova);
}
