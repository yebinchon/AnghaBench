
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


 int GC ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int amdgpu_gmc_pd_addr (int ) ;
 int gfxhub_v1_0_setup_vm_pt_regs (struct amdgpu_device*,int ,int ) ;
 int mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ;
 int mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ;
 int mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ;
 int mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ;

__attribute__((used)) static void gfxhub_v1_0_init_gart_aperture_regs(struct amdgpu_device *adev)
{
 uint64_t pt_base = amdgpu_gmc_pd_addr(adev->gart.bo);

 gfxhub_v1_0_setup_vm_pt_regs(adev, 0, pt_base);

 WREG32_SOC15(GC, 0, mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32,
       (u32)(adev->gmc.gart_start >> 12));
 WREG32_SOC15(GC, 0, mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32,
       (u32)(adev->gmc.gart_start >> 44));

 WREG32_SOC15(GC, 0, mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32,
       (u32)(adev->gmc.gart_end >> 12));
 WREG32_SOC15(GC, 0, mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32,
       (u32)(adev->gmc.gart_end >> 44));
}
