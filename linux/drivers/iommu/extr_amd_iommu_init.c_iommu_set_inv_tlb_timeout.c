
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amd_iommu {scalar_t__ mmio_base; } ;


 int CONTROL_INV_TIMEOUT ;
 int CTRL_INV_TO_MASK ;
 scalar_t__ MMIO_CONTROL_OFFSET ;
 int readq (scalar_t__) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void iommu_set_inv_tlb_timeout(struct amd_iommu *iommu, int timeout)
{
 u64 ctrl;

 ctrl = readq(iommu->mmio_base + MMIO_CONTROL_OFFSET);
 ctrl &= ~CTRL_INV_TO_MASK;
 ctrl |= (timeout << CONTROL_INV_TIMEOUT) & CTRL_INV_TO_MASK;
 writeq(ctrl, iommu->mmio_base + MMIO_CONTROL_OFFSET);
}
