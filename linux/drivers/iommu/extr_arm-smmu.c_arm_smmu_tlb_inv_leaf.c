
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_flush_ops {int (* tlb_sync ) (void*) ;int (* tlb_inv_range ) (unsigned long,size_t,size_t,int,void*) ;} ;
struct arm_smmu_domain {struct arm_smmu_flush_ops* flush_ops; } ;


 int stub1 (unsigned long,size_t,size_t,int,void*) ;
 int stub2 (void*) ;

__attribute__((used)) static void arm_smmu_tlb_inv_leaf(unsigned long iova, size_t size,
      size_t granule, void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;

 ops->tlb_inv_range(iova, size, granule, 1, cookie);
 ops->tlb_sync(cookie);
}
