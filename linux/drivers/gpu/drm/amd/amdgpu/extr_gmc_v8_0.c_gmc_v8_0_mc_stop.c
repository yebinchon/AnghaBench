
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int BLACKOUT_MODE ;
 int MC_SHARED_BLACKOUT_CNTL ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int gmc_v8_0_wait_for_idle (struct amdgpu_device*) ;
 int mmBIF_FB_EN ;
 int mmMC_SHARED_BLACKOUT_CNTL ;
 int udelay (int) ;

__attribute__((used)) static void gmc_v8_0_mc_stop(struct amdgpu_device *adev)
{
 u32 blackout;

 gmc_v8_0_wait_for_idle(adev);

 blackout = RREG32(mmMC_SHARED_BLACKOUT_CNTL);
 if (REG_GET_FIELD(blackout, MC_SHARED_BLACKOUT_CNTL, BLACKOUT_MODE) != 1) {

  WREG32(mmBIF_FB_EN, 0);

  blackout = REG_SET_FIELD(blackout,
      MC_SHARED_BLACKOUT_CNTL, BLACKOUT_MODE, 1);
  WREG32(mmMC_SHARED_BLACKOUT_CNTL, blackout);
 }

 udelay(100);
}
