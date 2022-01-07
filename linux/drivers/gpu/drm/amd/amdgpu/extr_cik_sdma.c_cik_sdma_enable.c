
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {TYPE_1__ sdma; } ;


 int RREG32 (scalar_t__) ;
 int SDMA0_F32_CNTL__HALT_MASK ;
 int WREG32 (scalar_t__,int ) ;
 int cik_sdma_gfx_stop (struct amdgpu_device*) ;
 int cik_sdma_rlc_stop (struct amdgpu_device*) ;
 scalar_t__ mmSDMA0_F32_CNTL ;
 scalar_t__* sdma_offsets ;

__attribute__((used)) static void cik_sdma_enable(struct amdgpu_device *adev, bool enable)
{
 u32 me_cntl;
 int i;

 if (!enable) {
  cik_sdma_gfx_stop(adev);
  cik_sdma_rlc_stop(adev);
 }

 for (i = 0; i < adev->sdma.num_instances; i++) {
  me_cntl = RREG32(mmSDMA0_F32_CNTL + sdma_offsets[i]);
  if (enable)
   me_cntl &= ~SDMA0_F32_CNTL__HALT_MASK;
  else
   me_cntl |= SDMA0_F32_CNTL__HALT_MASK;
  WREG32(mmSDMA0_F32_CNTL + sdma_offsets[i], me_cntl);
 }
}
