
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amd_iommu {int max_counters; } ;


 struct amd_iommu* get_amd_iommu (unsigned int) ;

u8 amd_iommu_pc_get_max_counters(unsigned int idx)
{
 struct amd_iommu *iommu = get_amd_iommu(idx);

 if (iommu)
  return iommu->max_counters;

 return 0;
}
