
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct arm_smmu_flush_ops {int (* tlb_inv_range ) (unsigned long,size_t,size_t,int,void*) ;} ;
struct arm_smmu_domain {struct arm_smmu_flush_ops* flush_ops; } ;


 int stub1 (unsigned long,size_t,size_t,int,void*) ;

__attribute__((used)) static void arm_smmu_tlb_add_page(struct iommu_iotlb_gather *gather,
      unsigned long iova, size_t granule,
      void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;

 ops->tlb_inv_range(iova, granule, granule, 1, cookie);
}
