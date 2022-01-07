
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int ENABLE_CONTEXT ;
 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int PAGE_TABLE_DEPTH ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SOC15_OFFSET (int ,int ,int ,int) ;
 int VML2VC0_VM_CONTEXT0_CNTL ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int mmVML2VC0_VM_CONTEXT0_CNTL ;

__attribute__((used)) static void mmhub_v9_4_enable_system_domain(struct amdgpu_device *adev,
         int hubid)
{
 uint32_t tmp;

 tmp = RREG32_SOC15_OFFSET(MMHUB, 0, mmVML2VC0_VM_CONTEXT0_CNTL,
      hubid * MMHUB_INSTANCE_REGISTER_OFFSET);
 tmp = REG_SET_FIELD(tmp, VML2VC0_VM_CONTEXT0_CNTL, ENABLE_CONTEXT, 1);
 tmp = REG_SET_FIELD(tmp, VML2VC0_VM_CONTEXT0_CNTL, PAGE_TABLE_DEPTH, 0);
 WREG32_SOC15_OFFSET(MMHUB, 0, mmVML2VC0_VM_CONTEXT0_CNTL,
       hubid * MMHUB_INSTANCE_REGISTER_OFFSET, tmp);
}
