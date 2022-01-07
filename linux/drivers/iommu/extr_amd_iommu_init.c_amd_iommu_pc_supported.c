
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd_iommu_pc_present ;

bool amd_iommu_pc_supported(void)
{
 return amd_iommu_pc_present;
}
