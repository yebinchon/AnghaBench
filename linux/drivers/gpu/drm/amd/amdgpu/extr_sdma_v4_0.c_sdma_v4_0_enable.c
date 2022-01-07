
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_instances; scalar_t__ has_page_queue; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int HALT ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_SDMA (int,int ) ;
 int SDMA0_F32_CNTL ;
 int WREG32_SDMA (int,int ,int ) ;
 int mmSDMA0_F32_CNTL ;
 int sdma_v4_0_gfx_stop (struct amdgpu_device*) ;
 int sdma_v4_0_page_stop (struct amdgpu_device*) ;
 int sdma_v4_0_rlc_stop (struct amdgpu_device*) ;

__attribute__((used)) static void sdma_v4_0_enable(struct amdgpu_device *adev, bool enable)
{
 u32 f32_cntl;
 int i;

 if (enable == 0) {
  sdma_v4_0_gfx_stop(adev);
  sdma_v4_0_rlc_stop(adev);
  if (adev->sdma.has_page_queue)
   sdma_v4_0_page_stop(adev);
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  f32_cntl = RREG32_SDMA(i, mmSDMA0_F32_CNTL);
  f32_cntl = REG_SET_FIELD(f32_cntl, SDMA0_F32_CNTL, HALT, enable ? 0 : 1);
  WREG32_SDMA(i, mmSDMA0_F32_CNTL, f32_cntl);
 }
}
