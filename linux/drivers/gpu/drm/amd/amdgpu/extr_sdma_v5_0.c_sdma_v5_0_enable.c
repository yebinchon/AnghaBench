
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
 int RREG32 (int ) ;
 int SDMA0_F32_CNTL ;
 int WREG32 (int ,int ) ;
 int mmSDMA0_F32_CNTL ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,int,int ) ;
 int sdma_v5_0_gfx_stop (struct amdgpu_device*) ;
 int sdma_v5_0_rlc_stop (struct amdgpu_device*) ;

__attribute__((used)) static void sdma_v5_0_enable(struct amdgpu_device *adev, bool enable)
{
 u32 f32_cntl;
 int i;

 if (enable == 0) {
  sdma_v5_0_gfx_stop(adev);
  sdma_v5_0_rlc_stop(adev);
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  f32_cntl = RREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_F32_CNTL));
  f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_F32_CNTL, HALT, enable ? 0 : 1);
  WREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_F32_CNTL), f32_cntl);
 }
}
