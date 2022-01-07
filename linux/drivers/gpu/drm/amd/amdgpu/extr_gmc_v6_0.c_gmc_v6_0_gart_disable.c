
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 unsigned long MC_VM_MX_L1_TLB_CNTL__SYSTEM_ACCESS_MODE_MASK ;
 unsigned long MC_VM_MX_L1_TLB_CNTL__SYSTEM_APERTURE_UNMAPPED_ACCESS__SHIFT ;
 unsigned long VM_L2_CNTL3__L2_CACHE_BIGK_ASSOCIATIVITY_MASK ;
 unsigned long VM_L2_CNTL3__L2_CACHE_BIGK_FRAGMENT_SIZE__SHIFT ;
 unsigned long VM_L2_CNTL__CONTEXT1_IDENTITY_ACCESS_MODE__SHIFT ;
 unsigned long VM_L2_CNTL__EFFECTIVE_L2_QUEUE_SIZE__SHIFT ;
 unsigned long VM_L2_CNTL__ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE_MASK ;
 unsigned long VM_L2_CNTL__ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE_MASK ;
 int WREG32 (int ,unsigned long) ;
 int amdgpu_gart_table_vram_unpin (struct amdgpu_device*) ;
 int mmMC_VM_MX_L1_TLB_CNTL ;
 int mmVM_CONTEXT0_CNTL ;
 int mmVM_CONTEXT1_CNTL ;
 int mmVM_L2_CNTL ;
 int mmVM_L2_CNTL2 ;
 int mmVM_L2_CNTL3 ;

__attribute__((used)) static void gmc_v6_0_gart_disable(struct amdgpu_device *adev)
{
 WREG32(mmVM_CONTEXT0_CNTL, 0);
 WREG32(mmVM_CONTEXT1_CNTL, 0);

 WREG32(mmMC_VM_MX_L1_TLB_CNTL,
        MC_VM_MX_L1_TLB_CNTL__SYSTEM_ACCESS_MODE_MASK |
        (0UL << MC_VM_MX_L1_TLB_CNTL__SYSTEM_APERTURE_UNMAPPED_ACCESS__SHIFT));

 WREG32(mmVM_L2_CNTL,
        VM_L2_CNTL__ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE_MASK |
        VM_L2_CNTL__ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE_MASK |
        (7UL << VM_L2_CNTL__EFFECTIVE_L2_QUEUE_SIZE__SHIFT) |
        (1UL << VM_L2_CNTL__CONTEXT1_IDENTITY_ACCESS_MODE__SHIFT));
 WREG32(mmVM_L2_CNTL2, 0);
 WREG32(mmVM_L2_CNTL3,
        VM_L2_CNTL3__L2_CACHE_BIGK_ASSOCIATIVITY_MASK |
        (0UL << VM_L2_CNTL3__L2_CACHE_BIGK_FRAGMENT_SIZE__SHIFT));
 amdgpu_gart_table_vram_unpin(adev);
}
