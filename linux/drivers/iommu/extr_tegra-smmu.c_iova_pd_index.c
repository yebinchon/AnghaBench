
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMMU_NUM_PDE ;
 unsigned long SMMU_PDE_SHIFT ;

__attribute__((used)) static unsigned int iova_pd_index(unsigned long iova)
{
 return (iova >> SMMU_PDE_SHIFT) & (SMMU_NUM_PDE - 1);
}
