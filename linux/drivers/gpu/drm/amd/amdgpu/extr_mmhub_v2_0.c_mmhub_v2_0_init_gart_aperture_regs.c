
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gart_start; int gart_end; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int MMHUB ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ;
 int mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ;
 int mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ;
 int mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ;
 int mmhub_v2_0_init_gart_pt_regs (struct amdgpu_device*) ;

__attribute__((used)) static void mmhub_v2_0_init_gart_aperture_regs(struct amdgpu_device *adev)
{
 mmhub_v2_0_init_gart_pt_regs(adev);

 WREG32_SOC15(MMHUB, 0, mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32,
       (u32)(adev->gmc.gart_start >> 12));
 WREG32_SOC15(MMHUB, 0, mmMMVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32,
       (u32)(adev->gmc.gart_start >> 44));

 WREG32_SOC15(MMHUB, 0, mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32,
       (u32)(adev->gmc.gart_end >> 12));
 WREG32_SOC15(MMHUB, 0, mmMMVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32,
       (u32)(adev->gmc.gart_end >> 44));
}
