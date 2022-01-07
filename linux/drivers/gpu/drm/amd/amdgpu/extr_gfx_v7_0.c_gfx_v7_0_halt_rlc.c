
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int usec_timeout; } ;


 int RLC_CNTL__RLC_ENABLE_F32_MASK ;
 int RLC_GPM_STAT__RLC_BUSY_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int gfx_v7_0_wait_for_rlc_serdes (struct amdgpu_device*) ;
 int mmRLC_CNTL ;
 int mmRLC_GPM_STAT ;
 int udelay (int) ;

__attribute__((used)) static u32 gfx_v7_0_halt_rlc(struct amdgpu_device *adev)
{
 u32 data, orig;

 orig = data = RREG32(mmRLC_CNTL);

 if (data & RLC_CNTL__RLC_ENABLE_F32_MASK) {
  u32 i;

  data &= ~RLC_CNTL__RLC_ENABLE_F32_MASK;
  WREG32(mmRLC_CNTL, data);

  for (i = 0; i < adev->usec_timeout; i++) {
   if ((RREG32(mmRLC_GPM_STAT) & RLC_GPM_STAT__RLC_BUSY_MASK) == 0)
    break;
   udelay(1);
  }

  gfx_v7_0_wait_for_rlc_serdes(adev);
 }

 return orig;
}
