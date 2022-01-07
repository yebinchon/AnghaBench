
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int ECO_BITS ;
 int ENABLE_ADVANCED_DRIVER_MODEL ;
 int ENABLE_L1_TLB ;
 int MMHUB ;
 int MMMC_VM_MX_L1_TLB_CNTL ;
 int MTYPE ;
 int MTYPE_UC ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SYSTEM_ACCESS_MODE ;
 int SYSTEM_APERTURE_UNMAPPED_ACCESS ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmMMMC_VM_MX_L1_TLB_CNTL ;

__attribute__((used)) static void mmhub_v2_0_init_tlb_regs(struct amdgpu_device *adev)
{
 uint32_t tmp;


 tmp = RREG32_SOC15(MMHUB, 0, mmMMMC_VM_MX_L1_TLB_CNTL);

 tmp = REG_SET_FIELD(tmp, MMMC_VM_MX_L1_TLB_CNTL, ENABLE_L1_TLB, 1);
 tmp = REG_SET_FIELD(tmp, MMMC_VM_MX_L1_TLB_CNTL, SYSTEM_ACCESS_MODE, 3);
 tmp = REG_SET_FIELD(tmp, MMMC_VM_MX_L1_TLB_CNTL,
       ENABLE_ADVANCED_DRIVER_MODEL, 1);
 tmp = REG_SET_FIELD(tmp, MMMC_VM_MX_L1_TLB_CNTL,
       SYSTEM_APERTURE_UNMAPPED_ACCESS, 0);
 tmp = REG_SET_FIELD(tmp, MMMC_VM_MX_L1_TLB_CNTL, ECO_BITS, 0);
 tmp = REG_SET_FIELD(tmp, MMMC_VM_MX_L1_TLB_CNTL,
       MTYPE, MTYPE_UC);

 WREG32_SOC15(MMHUB, 0, mmMMMC_VM_MX_L1_TLB_CNTL, tmp);
}
