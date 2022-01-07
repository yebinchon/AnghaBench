
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int ENABLE_CONTEXT ;
 int GC ;
 int PAGE_TABLE_DEPTH ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int VM_CONTEXT0_CNTL ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmVM_CONTEXT0_CNTL ;

__attribute__((used)) static void gfxhub_v1_0_enable_system_domain(struct amdgpu_device *adev)
{
 uint32_t tmp;

 tmp = RREG32_SOC15(GC, 0, mmVM_CONTEXT0_CNTL);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT0_CNTL, ENABLE_CONTEXT, 1);
 tmp = REG_SET_FIELD(tmp, VM_CONTEXT0_CNTL, PAGE_TABLE_DEPTH, 0);
 WREG32_SOC15(GC, 0, mmVM_CONTEXT0_CNTL, tmp);
}
