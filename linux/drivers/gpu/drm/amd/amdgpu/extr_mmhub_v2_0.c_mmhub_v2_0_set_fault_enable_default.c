
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int CRASH_ON_NO_RETRY_FAULT ;
 int CRASH_ON_RETRY_FAULT ;
 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int MMHUB ;
 int MMVM_L2_PROTECTION_FAULT_CNTL ;
 int NACK_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int PDE0_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int PDE1_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int PDE2_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int RANGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int READ_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int TRANSLATE_FURTHER_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int VALID_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int WRITE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int mmMMVM_L2_PROTECTION_FAULT_CNTL ;

void mmhub_v2_0_set_fault_enable_default(struct amdgpu_device *adev, bool value)
{
 u32 tmp;
 tmp = RREG32_SOC15(MMHUB, 0, mmMMVM_L2_PROTECTION_FAULT_CNTL);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       PDE1_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       PDE2_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       TRANSLATE_FURTHER_PROTECTION_FAULT_ENABLE_DEFAULT,
       value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       NACK_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       VALID_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       READ_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
       EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 if (!value) {
  tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
    CRASH_ON_NO_RETRY_FAULT, 1);
  tmp = REG_SET_FIELD(tmp, MMVM_L2_PROTECTION_FAULT_CNTL,
    CRASH_ON_RETRY_FAULT, 1);
 }
 WREG32_SOC15(MMHUB, 0, mmMMVM_L2_PROTECTION_FAULT_CNTL, tmp);
}
