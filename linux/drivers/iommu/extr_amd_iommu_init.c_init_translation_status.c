
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd_iommu {int flags; scalar_t__ mmio_base; } ;


 int AMD_IOMMU_FLAG_TRANS_PRE_ENABLED ;
 int CONTROL_IOMMU_EN ;
 scalar_t__ MMIO_CONTROL_OFFSET ;
 int readq (scalar_t__) ;

__attribute__((used)) static void init_translation_status(struct amd_iommu *iommu)
{
 u64 ctrl;

 ctrl = readq(iommu->mmio_base + MMIO_CONTROL_OFFSET);
 if (ctrl & (1<<CONTROL_IOMMU_EN))
  iommu->flags |= AMD_IOMMU_FLAG_TRANS_PRE_ENABLED;
}
