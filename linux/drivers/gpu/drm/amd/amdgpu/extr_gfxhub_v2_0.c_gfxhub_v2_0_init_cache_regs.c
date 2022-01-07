
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ translate_further; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int BANK_SELECT ;
 int CONTEXT1_IDENTITY_ACCESS_MODE ;
 int ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY ;
 int ENABLE_L2_CACHE ;
 int ENABLE_L2_FRAGMENT_PROCESSING ;
 int GC ;
 int GCVM_L2_CNTL ;
 int GCVM_L2_CNTL2 ;
 int GCVM_L2_CNTL3 ;
 int GCVM_L2_CNTL4 ;
 int IDENTITY_MODE_FRAGMENT_SIZE ;
 int INVALIDATE_ALL_L1_TLBS ;
 int INVALIDATE_L2_CACHE ;
 int L2_CACHE_BIGK_FRAGMENT_SIZE ;
 int L2_PDE0_CACHE_TAG_GENERATION_MODE ;
 int PDE_FAULT_CLASSIFICATION ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int VMC_TAP_PDE_REQUEST_PHYSICAL ;
 int VMC_TAP_PTE_REQUEST_PHYSICAL ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmGCVM_L2_CNTL ;
 int mmGCVM_L2_CNTL2 ;
 int mmGCVM_L2_CNTL3 ;
 int mmGCVM_L2_CNTL3_DEFAULT ;
 int mmGCVM_L2_CNTL4 ;
 int mmGCVM_L2_CNTL4_DEFAULT ;

__attribute__((used)) static void gfxhub_v2_0_init_cache_regs(struct amdgpu_device *adev)
{
 uint32_t tmp;


 tmp = RREG32_SOC15(GC, 0, mmGCVM_L2_CNTL);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL, ENABLE_L2_CACHE, 1);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL, ENABLE_L2_FRAGMENT_PROCESSING, 0);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL,
       ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY, 1);

 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL,
       L2_PDE0_CACHE_TAG_GENERATION_MODE, 0);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL, PDE_FAULT_CLASSIFICATION, 0);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL, CONTEXT1_IDENTITY_ACCESS_MODE, 1);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL, IDENTITY_MODE_FRAGMENT_SIZE, 0);
 WREG32_SOC15(GC, 0, mmGCVM_L2_CNTL, tmp);

 tmp = RREG32_SOC15(GC, 0, mmGCVM_L2_CNTL2);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL2, INVALIDATE_ALL_L1_TLBS, 1);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL2, INVALIDATE_L2_CACHE, 1);
 WREG32_SOC15(GC, 0, mmGCVM_L2_CNTL2, tmp);

 tmp = mmGCVM_L2_CNTL3_DEFAULT;
 if (adev->gmc.translate_further) {
  tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL3, BANK_SELECT, 12);
  tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL3,
        L2_CACHE_BIGK_FRAGMENT_SIZE, 9);
 } else {
  tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL3, BANK_SELECT, 9);
  tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL3,
        L2_CACHE_BIGK_FRAGMENT_SIZE, 6);
 }
 WREG32_SOC15(GC, 0, mmGCVM_L2_CNTL3, tmp);

 tmp = mmGCVM_L2_CNTL4_DEFAULT;
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL4, VMC_TAP_PDE_REQUEST_PHYSICAL, 0);
 tmp = REG_SET_FIELD(tmp, GCVM_L2_CNTL4, VMC_TAP_PTE_REQUEST_PHYSICAL, 0);
 WREG32_SOC15(GC, 0, mmGCVM_L2_CNTL4, tmp);
}
