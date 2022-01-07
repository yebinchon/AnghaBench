
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int ENABLE_ADVANCED_DRIVER_MODEL ;
 int ENABLE_L1_TLB ;
 int ENABLE_L2_CACHE ;
 int MC_VM_MX_L1_TLB_CNTL ;
 int MMHUB ;
 int REG_SET_FIELD (int,int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int VM_L2_CNTL ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmMC_VM_MX_L1_TLB_CNTL ;
 int mmVM_CONTEXT0_CNTL ;
 int mmVM_L2_CNTL ;
 int mmVM_L2_CNTL3 ;

void mmhub_v1_0_gart_disable(struct amdgpu_device *adev)
{
 u32 tmp;
 u32 i;


 for (i = 0; i < 16; i++)
  WREG32_SOC15_OFFSET(MMHUB, 0, mmVM_CONTEXT0_CNTL, i, 0);


 tmp = RREG32_SOC15(MMHUB, 0, mmMC_VM_MX_L1_TLB_CNTL);
 tmp = REG_SET_FIELD(tmp, MC_VM_MX_L1_TLB_CNTL, ENABLE_L1_TLB, 0);
 tmp = REG_SET_FIELD(tmp,
    MC_VM_MX_L1_TLB_CNTL,
    ENABLE_ADVANCED_DRIVER_MODEL,
    0);
 WREG32_SOC15(MMHUB, 0, mmMC_VM_MX_L1_TLB_CNTL, tmp);

 if (!amdgpu_sriov_vf(adev)) {

  tmp = RREG32_SOC15(MMHUB, 0, mmVM_L2_CNTL);
  tmp = REG_SET_FIELD(tmp, VM_L2_CNTL, ENABLE_L2_CACHE, 0);
  WREG32_SOC15(MMHUB, 0, mmVM_L2_CNTL, tmp);
  WREG32_SOC15(MMHUB, 0, mmVM_L2_CNTL3, 0);
 }
}
