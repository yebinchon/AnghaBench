
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RADEON_PCIE_TX_GART_CNTL ;
 int RADEON_PCIE_TX_GART_INVALIDATE_TLB ;
 int RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,int) ;
 int mb () ;

void rv370_pcie_gart_tlb_flush(struct radeon_device *rdev)
{
 uint32_t tmp;
 int i;


 for (i = 0; i < 2; i++) {
  tmp = RREG32_PCIE(RADEON_PCIE_TX_GART_CNTL);
  WREG32_PCIE(RADEON_PCIE_TX_GART_CNTL, tmp | RADEON_PCIE_TX_GART_INVALIDATE_TLB);
  (void)RREG32_PCIE(RADEON_PCIE_TX_GART_CNTL);
  WREG32_PCIE(RADEON_PCIE_TX_GART_CNTL, tmp);
 }
 mb();
}
