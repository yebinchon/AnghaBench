
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int) ;
 int mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_HI32 ;
 int mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_LO32 ;

__attribute__((used)) static void mmhub_v9_4_program_invalidation(struct amdgpu_device *adev,
         int hubid)
{
 unsigned i;

 for (i = 0; i < 18; ++i) {
  WREG32_SOC15_OFFSET(MMHUB, 0,
    mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_LO32,
    hubid * MMHUB_INSTANCE_REGISTER_OFFSET + 2 * i,
    0xffffffff);
  WREG32_SOC15_OFFSET(MMHUB, 0,
    mmVML2VC0_VM_INVALIDATE_ENG0_ADDR_RANGE_HI32,
    hubid * MMHUB_INSTANCE_REGISTER_OFFSET + 2 * i,
    0x1f);
 }
}
