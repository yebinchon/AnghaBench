
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int vram_base_offset; } ;
struct TYPE_5__ {int agp_end; int agp_start; int vram_start; int fb_end; int fb_start; } ;
struct TYPE_4__ {int gpu_addr; } ;
struct amdgpu_device {int dummy_page_addr; TYPE_3__ vm_manager; TYPE_2__ gmc; TYPE_1__ vram_scratch; } ;


 int ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY ;
 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15_OFFSET (int ,int ,int ,int) ;
 int VML2PF0_VM_L2_PROTECTION_FAULT_CNTL2 ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int) ;
 int max (int ,int) ;
 int min (int ,int) ;
 int mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL2 ;
 int mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 ;
 int mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 ;
 int mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ;
 int mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ;
 int mmVMSHAREDVC0_MC_VM_AGP_BASE ;
 int mmVMSHAREDVC0_MC_VM_AGP_BOT ;
 int mmVMSHAREDVC0_MC_VM_AGP_TOP ;
 int mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_LOW_ADDR ;

__attribute__((used)) static void mmhub_v9_4_init_system_aperture_regs(struct amdgpu_device *adev,
              int hubid)
{
 uint64_t value;
 uint32_t tmp;


 WREG32_SOC15_OFFSET(MMHUB, 0, mmVMSHAREDVC0_MC_VM_AGP_BASE,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       0);
 WREG32_SOC15_OFFSET(MMHUB, 0, mmVMSHAREDVC0_MC_VM_AGP_TOP,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       adev->gmc.agp_end >> 24);
 WREG32_SOC15_OFFSET(MMHUB, 0, mmVMSHAREDVC0_MC_VM_AGP_BOT,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       adev->gmc.agp_start >> 24);


 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_LOW_ADDR,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       min(adev->gmc.fb_start, adev->gmc.agp_start) >> 18);
 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVMSHAREDVC0_MC_VM_SYSTEM_APERTURE_HIGH_ADDR,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       max(adev->gmc.fb_end, adev->gmc.agp_end) >> 18);


 value = adev->vram_scratch.gpu_addr - adev->gmc.vram_start +
  adev->vm_manager.vram_base_offset;
 WREG32_SOC15_OFFSET(MMHUB, 0,
   mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB,
   hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
   (u32)(value >> 12));
 WREG32_SOC15_OFFSET(MMHUB, 0,
   mmVMSHAREDPF0_MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB,
   hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
   (u32)(value >> 44));


 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       (u32)(adev->dummy_page_addr >> 12));
 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2PF0_VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       (u32)((u64)adev->dummy_page_addr >> 44));

 tmp = RREG32_SOC15_OFFSET(MMHUB, 0,
      mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL2,
      hubid * MMHUB_INSTANCE_REGISTER_OFFSET);
 tmp = REG_SET_FIELD(tmp, VML2PF0_VM_L2_PROTECTION_FAULT_CNTL2,
       ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, 1);
 WREG32_SOC15_OFFSET(MMHUB, 0, mmVML2PF0_VM_L2_PROTECTION_FAULT_CNTL2,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET, tmp);
}
