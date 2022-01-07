
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct amd_iommu {int dummy; } ;


 int EINVAL ;
 int iommu_pc_get_set_reg (struct amd_iommu*,int ,int ,int ,int *,int) ;

int amd_iommu_pc_get_reg(struct amd_iommu *iommu, u8 bank, u8 cntr, u8 fxn, u64 *value)
{
 if (!iommu)
  return -EINVAL;

 return iommu_pc_get_set_reg(iommu, bank, cntr, fxn, value, 0);
}
