
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int HALT ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int SDMA0_F32_CNTL ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmSDMA0_F32_CNTL ;
 scalar_t__* sdma_offsets ;
 int sdma_v2_4_gfx_stop (struct amdgpu_device*) ;
 int sdma_v2_4_rlc_stop (struct amdgpu_device*) ;

__attribute__((used)) static void sdma_v2_4_enable(struct amdgpu_device *adev, bool enable)
{
 u32 f32_cntl;
 int i;

 if (!enable) {
  sdma_v2_4_gfx_stop(adev);
  sdma_v2_4_rlc_stop(adev);
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  f32_cntl = RREG32(mmSDMA0_F32_CNTL + sdma_offsets[i]);
  if (enable)
   f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_F32_CNTL, HALT, 0);
  else
   f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_F32_CNTL, HALT, 1);
  WREG32(mmSDMA0_F32_CNTL + sdma_offsets[i], f32_cntl);
 }
}
