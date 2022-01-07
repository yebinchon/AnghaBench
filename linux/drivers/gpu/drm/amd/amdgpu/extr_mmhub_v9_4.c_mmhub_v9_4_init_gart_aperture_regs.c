
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct TYPE_3__ {int gart_start; int gart_end; } ;
struct TYPE_4__ {int bo; } ;
struct amdgpu_device {TYPE_1__ gmc; TYPE_2__ gart; } ;


 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int amdgpu_gmc_pd_addr (int ) ;
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ;
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ;
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ;
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ;
 int mmhub_v9_4_setup_vm_pt_regs (struct amdgpu_device*,int,int ,int ) ;

__attribute__((used)) static void mmhub_v9_4_init_gart_aperture_regs(struct amdgpu_device *adev,
            int hubid)
{
 uint64_t pt_base = amdgpu_gmc_pd_addr(adev->gart.bo);

 mmhub_v9_4_setup_vm_pt_regs(adev, hubid, 0, pt_base);

 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       (u32)(adev->gmc.gart_start >> 12));
 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       (u32)(adev->gmc.gart_start >> 44));

 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       (u32)(adev->gmc.gart_end >> 12));
 WREG32_SOC15_OFFSET(MMHUB, 0,
       mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
       (u32)(adev->gmc.gart_end >> 44));
}
