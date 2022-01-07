
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct amd_iommu {int max_banks; int max_counters; scalar_t__ mmio_base; } ;


 int EINVAL ;
 int ENODEV ;
 int GENMASK_ULL (int,int ) ;
 scalar_t__ MMIO_CNTR_REG_OFFSET ;
 scalar_t__ WARN_ON (int) ;
 int amd_iommu_pc_present ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int iommu_pc_get_set_reg(struct amd_iommu *iommu, u8 bank, u8 cntr,
    u8 fxn, u64 *value, bool is_write)
{
 u32 offset;
 u32 max_offset_lim;


 if (!amd_iommu_pc_present)
  return -ENODEV;


 if (WARN_ON(!iommu || (fxn > 0x28) || (fxn & 7)))
  return -ENODEV;

 offset = (u32)(((0x40 | bank) << 12) | (cntr << 8) | fxn);


 max_offset_lim = (u32)(((0x40 | iommu->max_banks) << 12) |
    (iommu->max_counters << 8) | 0x28);
 if ((offset < MMIO_CNTR_REG_OFFSET) ||
     (offset > max_offset_lim))
  return -EINVAL;

 if (is_write) {
  u64 val = *value & GENMASK_ULL(47, 0);

  writel((u32)val, iommu->mmio_base + offset);
  writel((val >> 32), iommu->mmio_base + offset + 4);
 } else {
  *value = readl(iommu->mmio_base + offset + 4);
  *value <<= 32;
  *value |= readl(iommu->mmio_base + offset);
  *value &= GENMASK_ULL(47, 0);
 }

 return 0;
}
