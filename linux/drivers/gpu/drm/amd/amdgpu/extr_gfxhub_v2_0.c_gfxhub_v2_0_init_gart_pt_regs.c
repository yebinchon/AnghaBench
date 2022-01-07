
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;


 int GC ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int amdgpu_gmc_pd_addr (int ) ;
 int lower_32_bits (int ) ;
 int mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ;
 int mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void gfxhub_v2_0_init_gart_pt_regs(struct amdgpu_device *adev)
{
 uint64_t value = amdgpu_gmc_pd_addr(adev->gart.bo);


 WREG32_SOC15(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
       lower_32_bits(value));

 WREG32_SOC15(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
       upper_32_bits(value));
}
