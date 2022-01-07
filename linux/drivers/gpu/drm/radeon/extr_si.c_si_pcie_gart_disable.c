
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int * saved_table_addr; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;


 int CONTEXT1_IDENTITY_ACCESS_MODE (int) ;
 int EFFECTIVE_L2_QUEUE_SIZE (int) ;
 int ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE ;
 int ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE ;
 int L2_CACHE_BIGK_ASSOCIATIVITY ;
 int L2_CACHE_BIGK_FRAGMENT_SIZE (int ) ;
 int MC_VM_MX_L1_TLB_CNTL ;
 int RREG32 (scalar_t__) ;
 int SYSTEM_ACCESS_MODE_NOT_IN_SYS ;
 int SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU ;
 int VM_CONTEXT0_CNTL ;
 scalar_t__ VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 int VM_CONTEXT1_CNTL ;
 scalar_t__ VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ;
 int VM_L2_CNTL ;
 int VM_L2_CNTL2 ;
 int VM_L2_CNTL3 ;
 int WREG32 (int ,int) ;
 int radeon_gart_table_vram_unpin (struct radeon_device*) ;

__attribute__((used)) static void si_pcie_gart_disable(struct radeon_device *rdev)
{
 unsigned i;

 for (i = 1; i < 16; ++i) {
  uint32_t reg;
  if (i < 8)
   reg = VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (i << 2);
  else
   reg = VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((i - 8) << 2);
  rdev->vm_manager.saved_table_addr[i] = RREG32(reg);
 }


 WREG32(VM_CONTEXT0_CNTL, 0);
 WREG32(VM_CONTEXT1_CNTL, 0);

 WREG32(MC_VM_MX_L1_TLB_CNTL, SYSTEM_ACCESS_MODE_NOT_IN_SYS |
        SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU);

 WREG32(VM_L2_CNTL, ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE |
        ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE |
        EFFECTIVE_L2_QUEUE_SIZE(7) |
        CONTEXT1_IDENTITY_ACCESS_MODE(1));
 WREG32(VM_L2_CNTL2, 0);
 WREG32(VM_L2_CNTL3, L2_CACHE_BIGK_ASSOCIATIVITY |
        L2_CACHE_BIGK_FRAGMENT_SIZE(0));
 radeon_gart_table_vram_unpin(rdev);
}
