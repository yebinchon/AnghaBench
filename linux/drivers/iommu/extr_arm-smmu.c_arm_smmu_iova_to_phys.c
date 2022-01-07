
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {scalar_t__ type; } ;
struct io_pgtable_ops {int (* iova_to_phys ) (struct io_pgtable_ops*,int ) ;} ;
struct arm_smmu_domain {scalar_t__ stage; TYPE_1__* smmu; struct io_pgtable_ops* pgtbl_ops; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int features; } ;


 scalar_t__ ARM_SMMU_DOMAIN_S1 ;
 int ARM_SMMU_FEAT_TRANS_OPS ;
 scalar_t__ IOMMU_DOMAIN_IDENTITY ;
 int arm_smmu_iova_to_phys_hard (struct iommu_domain*,int ) ;
 int stub1 (struct io_pgtable_ops*,int ) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t arm_smmu_iova_to_phys(struct iommu_domain *domain,
     dma_addr_t iova)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 struct io_pgtable_ops *ops = smmu_domain->pgtbl_ops;

 if (domain->type == IOMMU_DOMAIN_IDENTITY)
  return iova;

 if (!ops)
  return 0;

 if (smmu_domain->smmu->features & ARM_SMMU_FEAT_TRANS_OPS &&
   smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
  return arm_smmu_iova_to_phys_hard(domain, iova);

 return ops->iova_to_phys(ops, iova);
}
