
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u8 ;
typedef unsigned long long u64 ;
struct amd_iommu {scalar_t__ mmio_base; } ;


 scalar_t__ MMIO_CONTROL_OFFSET ;
 unsigned long long readq (scalar_t__) ;
 int writeq (unsigned long long,scalar_t__) ;

__attribute__((used)) static void iommu_feature_enable(struct amd_iommu *iommu, u8 bit)
{
 u64 ctrl;

 ctrl = readq(iommu->mmio_base + MMIO_CONTROL_OFFSET);
 ctrl |= (1ULL << bit);
 writeq(ctrl, iommu->mmio_base + MMIO_CONTROL_OFFSET);
}
