
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;


 int ENABLE_ADVANCED_DRIVER_MODEL ;
 int ENABLE_L1_FRAGMENT_PROCESSING ;
 int ENABLE_L1_TLB ;
 int ENABLE_L2_CACHE ;
 int MC_VM_MX_L1_TLB_CNTL ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int ) ;
 scalar_t__ RREG32 (int ) ;
 int VM_L2_CNTL ;
 int WREG32 (int ,scalar_t__) ;
 int amdgpu_gart_table_vram_unpin (struct amdgpu_device*) ;
 int mmMC_VM_MX_L1_TLB_CNTL ;
 int mmVM_CONTEXT0_CNTL ;
 int mmVM_CONTEXT1_CNTL ;
 int mmVM_L2_CNTL ;
 int mmVM_L2_CNTL2 ;

__attribute__((used)) static void gmc_v7_0_gart_disable(struct amdgpu_device *adev)
{
 u32 tmp;


 WREG32(mmVM_CONTEXT0_CNTL, 0);
 WREG32(mmVM_CONTEXT1_CNTL, 0);

 tmp = RREG32(mmMC_VM_MX_L1_TLB_CNTL);
 tmp = REG_SET_FIELD(tmp, MC_VM_MX_L1_TLB_CNTL, ENABLE_L1_TLB, 0);
 tmp = REG_SET_FIELD(tmp, MC_VM_MX_L1_TLB_CNTL, ENABLE_L1_FRAGMENT_PROCESSING, 0);
 tmp = REG_SET_FIELD(tmp, MC_VM_MX_L1_TLB_CNTL, ENABLE_ADVANCED_DRIVER_MODEL, 0);
 WREG32(mmMC_VM_MX_L1_TLB_CNTL, tmp);

 tmp = RREG32(mmVM_L2_CNTL);
 tmp = REG_SET_FIELD(tmp, VM_L2_CNTL, ENABLE_L2_CACHE, 0);
 WREG32(mmVM_L2_CNTL, tmp);
 WREG32(mmVM_L2_CNTL2, 0);
 amdgpu_gart_table_vram_unpin(adev);
}
