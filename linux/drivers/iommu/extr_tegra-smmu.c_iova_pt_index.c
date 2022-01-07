
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMMU_NUM_PTE ;
 unsigned long SMMU_PTE_SHIFT ;

__attribute__((used)) static unsigned int iova_pt_index(unsigned long iova)
{
 return (iova >> SMMU_PTE_SHIFT) & (SMMU_NUM_PTE - 1);
}
