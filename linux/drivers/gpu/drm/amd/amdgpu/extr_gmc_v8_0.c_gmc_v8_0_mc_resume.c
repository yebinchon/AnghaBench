
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;


 int BIF_FB_EN ;
 int BLACKOUT_MODE ;
 int FB_READ_EN ;
 int FB_WRITE_EN ;
 int MC_SHARED_BLACKOUT_CNTL ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;
 int mmBIF_FB_EN ;
 int mmMC_SHARED_BLACKOUT_CNTL ;

__attribute__((used)) static void gmc_v8_0_mc_resume(struct amdgpu_device *adev)
{
 u32 tmp;


 tmp = RREG32(mmMC_SHARED_BLACKOUT_CNTL);
 tmp = REG_SET_FIELD(tmp, MC_SHARED_BLACKOUT_CNTL, BLACKOUT_MODE, 0);
 WREG32(mmMC_SHARED_BLACKOUT_CNTL, tmp);

 tmp = REG_SET_FIELD(0, BIF_FB_EN, FB_READ_EN, 1);
 tmp = REG_SET_FIELD(tmp, BIF_FB_EN, FB_WRITE_EN, 1);
 WREG32(mmBIF_FB_EN, tmp);
}
