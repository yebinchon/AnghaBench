
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int PDE0_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int RANGE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int READ_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int VALID_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int VM_CONTEXT1_CNTL ;
 int WREG32 (int ,int ) ;
 int WRITE_PROTECTION_FAULT_ENABLE_DEFAULT ;
 int mmVM_CONTEXT1_CNTL ;

__attribute__((used)) static void gmc_v7_0_set_fault_enable_default(struct amdgpu_device *adev,
           bool value)
{
 u32 tmp;

 tmp = RREG32(mmVM_CONTEXT1_CNTL);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
       RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
       DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
       PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
       VALID_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
       READ_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT1_CNTL,
       WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
 WREG32(mmVM_CONTEXT1_CNTL, tmp);
}
