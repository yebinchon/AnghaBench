
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_smmu_tlb_inv_range (unsigned long,size_t,size_t,int,void*) ;

__attribute__((used)) static void arm_smmu_tlb_inv_walk(unsigned long iova, size_t size,
      size_t granule, void *cookie)
{
 arm_smmu_tlb_inv_range(iova, size, granule, 0, cookie);
}
