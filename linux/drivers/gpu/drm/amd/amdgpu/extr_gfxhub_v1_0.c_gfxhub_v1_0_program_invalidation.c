
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int) ;
 int mmVM_INVALIDATE_ENG0_ADDR_RANGE_HI32 ;
 int mmVM_INVALIDATE_ENG0_ADDR_RANGE_LO32 ;

__attribute__((used)) static void gfxhub_v1_0_program_invalidation(struct amdgpu_device *adev)
{
 unsigned i;

 for (i = 0 ; i < 18; ++i) {
  WREG32_SOC15_OFFSET(GC, 0, mmVM_INVALIDATE_ENG0_ADDR_RANGE_LO32,
        2 * i, 0xffffffff);
  WREG32_SOC15_OFFSET(GC, 0, mmVM_INVALIDATE_ENG0_ADDR_RANGE_HI32,
        2 * i, 0x1f);
 }
}
