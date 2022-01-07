
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;


 int AMD_CG_SUPPORT_SDMA_LS ;
 int RREG32 (scalar_t__) ;
 int SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmSDMA0_POWER_CNTL ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void sdma_v3_0_update_sdma_medium_grain_light_sleep(
  struct amdgpu_device *adev,
  bool enable)
{
 uint32_t temp, data;
 int i;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_LS)) {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   temp = data = RREG32(mmSDMA0_POWER_CNTL + sdma_offsets[i]);
   data |= SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK;

   if (temp != data)
    WREG32(mmSDMA0_POWER_CNTL + sdma_offsets[i], data);
  }
 } else {
  for (i = 0; i < adev->sdma.num_instances; i++) {
   temp = data = RREG32(mmSDMA0_POWER_CNTL + sdma_offsets[i]);
   data &= ~SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK;

   if (temp != data)
    WREG32(mmSDMA0_POWER_CNTL + sdma_offsets[i], data);
  }
 }
}
