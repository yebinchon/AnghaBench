
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;


 int AMD_CG_SUPPORT_SDMA_LS ;
 int RREG32_SDMA (int ,int ) ;
 int SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK ;
 int WREG32_SDMA (int ,int ,int ) ;
 int mmSDMA0_POWER_CNTL ;

__attribute__((used)) static void sdma_v4_0_update_medium_grain_light_sleep(
  struct amdgpu_device *adev,
  bool enable)
{
 uint32_t data, def;
 int i;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_LS)) {
  for (i = 0; i < adev->sdma.num_instances; i++) {

   def = data = RREG32_SDMA(0, mmSDMA0_POWER_CNTL);
   data |= SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK;
   if (def != data)
    WREG32_SDMA(0, mmSDMA0_POWER_CNTL, data);
  }
 } else {
  for (i = 0; i < adev->sdma.num_instances; i++) {

   def = data = RREG32_SDMA(0, mmSDMA0_POWER_CNTL);
   data &= ~SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK;
   if (def != data)
    WREG32_SDMA(0, mmSDMA0_POWER_CNTL, data);
  }
 }
}
