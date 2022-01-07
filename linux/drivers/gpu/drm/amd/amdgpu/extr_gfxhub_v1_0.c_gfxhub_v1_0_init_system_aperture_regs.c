
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int vram_base_offset; } ;
struct TYPE_5__ {int agp_start; int agp_end; int fb_end; int vram_start; int fb_start; } ;
struct TYPE_4__ {int gpu_addr; } ;
struct amdgpu_device {scalar_t__ asic_type; int rev_id; int dummy_page_addr; TYPE_3__ vm_manager; TYPE_2__ gmc; TYPE_1__ vram_scratch; } ;


 int ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY ;
 scalar_t__ CHIP_RAVEN ;
 int GC ;
 int VM_L2_PROTECTION_FAULT_CNTL2 ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int WREG32_SOC15_RLC (int ,int ,int ,int) ;
 int max (int,int) ;
 int min (int ,int) ;
 int mmMC_VM_AGP_BASE ;
 int mmMC_VM_AGP_BOT ;
 int mmMC_VM_AGP_TOP ;
 int mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ;
 int mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ;
 int mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int mmMC_VM_SYSTEM_APERTURE_LOW_ADDR ;
 int mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 ;
 int mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 ;

__attribute__((used)) static void gfxhub_v1_0_init_system_aperture_regs(struct amdgpu_device *adev)
{
 uint64_t value;


 WREG32_SOC15_RLC(GC, 0, mmMC_VM_AGP_BASE, 0);
 WREG32_SOC15_RLC(GC, 0, mmMC_VM_AGP_BOT, adev->gmc.agp_start >> 24);
 WREG32_SOC15_RLC(GC, 0, mmMC_VM_AGP_TOP, adev->gmc.agp_end >> 24);


 WREG32_SOC15_RLC(GC, 0, mmMC_VM_SYSTEM_APERTURE_LOW_ADDR,
       min(adev->gmc.fb_start, adev->gmc.agp_start) >> 18);

 if (adev->asic_type == CHIP_RAVEN && adev->rev_id >= 0x8)






  WREG32_SOC15_RLC(GC, 0, mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
        max((adev->gmc.fb_end >> 18) + 0x1,
     adev->gmc.agp_end >> 18));
 else
  WREG32_SOC15_RLC(GC, 0, mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
        max(adev->gmc.fb_end, adev->gmc.agp_end) >> 18);


 value = adev->vram_scratch.gpu_addr - adev->gmc.vram_start
  + adev->vm_manager.vram_base_offset;
 WREG32_SOC15(GC, 0, mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB,
       (u32)(value >> 12));
 WREG32_SOC15(GC, 0, mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB,
       (u32)(value >> 44));


 WREG32_SOC15(GC, 0, mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32,
       (u32)(adev->dummy_page_addr >> 12));
 WREG32_SOC15(GC, 0, mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32,
       (u32)((u64)adev->dummy_page_addr >> 44));

 WREG32_FIELD15(GC, 0, VM_L2_PROTECTION_FAULT_CNTL2,
         ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, 1);
}
